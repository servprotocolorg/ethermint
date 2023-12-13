#!/bin/bash

KEY1="Serv-0"
KEY2="Serv-1"
KEY3="Serv-2"
KEY4="Serv-3"
KEY5="Serv-4"
KEY6="Serv-5"

CHAINID="tserv_43970-1"
MONIKER="tserv-0"
KEYRING="test"
KEYALGO="eth_secp256k1"
LOGLEVEL="info"
TRACE="--trace"

# Validate dependencies are installed
command -v jq > /dev/null 2>&1 || { echo >&2 "jq not installed. More info: https://stedolan.github.io/jq/download/"; exit 1; }

# Remove existing daemon and client
rm -rf ~/.ethermintd*

make install

ethermintd config keyring-backend $KEYRING
ethermintd config chain-id $CHAINID

# If $KEY exists it should be deleted
ethermintd keys add $KEY1 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY2 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY3 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY4 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY5 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY6 --keyring-backend $KEYRING --algo $KEYALGO

# Set moniker and chain-id for Ethermint (Moniker can be anything, chain-id must be an integer)
ethermintd init $MONIKER --chain-id $CHAINID

# Change parameter token denominations to aphoton
cat $HOME/.ethermintd/config/genesis.json | jq '.app_state["staking"]["params"]["bond_denom"]="aphoton"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json
cat $HOME/.ethermintd/config/genesis.json | jq '.app_state["crisis"]["constant_fee"]["denom"]="aphoton"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json
cat $HOME/.ethermintd/config/genesis.json | jq '.app_state["gov"]["deposit_params"]["min_deposit"][0]["denom"]="aphoton"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json
cat $HOME/.ethermintd/config/genesis.json | jq '.app_state["mint"]["params"]["mint_denom"]="aphoton"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json

# Set gas limit in genesis
cat $HOME/.ethermintd/config/genesis.json | jq '.consensus_params["block"]["max_gas"]="20000000"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json

# Use jq to add more addresses to the genesis allocation with pre-allocated tokens
cat $HOME/.ethermintd/config/genesis.json | jq --argjson addresses '[
  {"address": "0x5B80e592cbcc6b3c14E80f4080Ee050360bbFbc6", "coins": [{"denom": "stake", "amount": "64000000000000000000000"}, {"denom": "aphoton", "amount": "64000000000000000000000"}]},
  {"address": "0x7aBF890095Ae56B3BB8ff34CD5E33a46CA73c9F9", "coins": [{"denom": "stake", "amount": "64000000000000000000000"}, {"denom": "aphoton", "amount": "64000000000000000000000"}]},
  {"address": "0x79f8E1B732bA63987873d5eB86C81364C2cF5021", "coins": [{"denom": "stake", "amount": "64000000000000000000000"}, {"denom": "aphoton", "amount": "64000000000000000000000"}]}
]' '.app_state["auth"]["accounts"] += $addresses' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json

# Sign genesis transaction
ethermintd gentx $KEY1 64000000000000000000000stake,64000000000000000000000aphoton --keyring-backend $KEYRING --chain-id $CHAINID

# Collect genesis tx
ethermintd collect-gentxs

# Run this to ensure everything worked and that the genesis file is setup correctly
ethermintd validate-genesis

# Disable produce empty block and enable prometheus metrics
sed -i 's/create_empty_blocks = true/create_empty_blocks = false/g' $HOME/.ethermintd/config/config.toml
sed -i 's/prometheus = false/prometheus = true/' $HOME/.ethermintd/config/config.toml
sed -i 's/prometheus-retention-time  = "0"/prometheus-retention-time  = "1000000000000"/g' $HOME/.ethermintd/config/app.toml
sed -i 's/enabled = false/enabled = true/g' $HOME/.ethermintd/config/app.toml

# Start the node (remove the --pruning=nothing flag if historical queries are not needed)
ethermintd start --metrics --pruning=nothing --evm.tracer=json $TRACE --log_level $LOGLEVEL --minimum-gas-prices=0.0001aphoton --json-rpc.api eth,txpool,personal,net,debug,web3,miner --api.enable
