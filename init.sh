#!/bin/bash

KEY1="Serv-0"
KEY2="Serv-1"
KEY3="Serv-2"
KEY4="Serv-3"
KEY5="Serv-4"
KEY6="Serv-5"

LEGACY_VALIDATORS=(
    "0x7Bf2734EF8fDCB05DCbfa48132390E4e2c14d34C"
    "0x7aBF890095Ae56B3BB8ff34CD5E33a46CA73c9F9"
    "0x79f8E1B732bA63987873d5eB86C81364C2cF5021"
    "0x7C9Eb8391a3578d0752c865729453f7A2B9a2A01"
    "0x785FF357ED389D6Be61e839950b852bCf2886fCd"
    "0x78f01296401AdA8f49767093E32427A2ef94BCE9"
    "0x568f34b77dcE31b3C084F66Ab8544983c1d45B18"
    "0x515012e7c8BC099c1B2c0D717cbe316eecF865dE"
    "0x55d73Da8FCab11273095A32B62E7Ac46FFfb3806"
    "0x54B3FfaBe0eE600C133503425c18eb15a150E51d"
    "0x54056841B872D7d4997d23011FBfCDd597D15626"
    "0x8A908DBF6833575F9f2BE34b9a204161C3041A2f"
    "0x8E9413cc6b013782f6b691D06fB31AfaA98ceF7F"
    "0x895C6E636a1fDfDea0f992aa350EeF058Fa693eC"
    "0x8b6bd24b049869459FbC645Dac269d16E65725A9"
    "0x8e5Ea566043C58BEff1dF9D28C0C33d681f851A2"
    "0x8e6a07FFeE6976513305d7cd24E879d52B229Aa7"
    "0x8E4EEb0B817369FFcFf03920b99C78Fbd0c21312"
    "0x8Dc673F2a290CCA1a4A8b3717Eb8216CE03C2f93"
    "0x8dF97B248563D1a223015A2Ff96f3B893B08e33d"
    "0x8CB2EB1Dde976F119649edEE71fc411d07A677fD"
    "0x8caE1B8D224a817C9808e8389e7B5746Ba82c6a9"
    "0x8d8840F3b81305E937FaaFEEb2976f32419b19b1"
    "0x8CcBEa996d11B95E715c408F956fF409D65aB4e6"
    "0x8af67e98c710c47c17650C0be64c2EDbF4d470BB"
    "0xAaBC09c7d29A03cf1fE36f5d4CBc0554652C4aD8"
    "0xAAA46950f15e9E9B2e06Cfab7193Ff0eaEab0e4e"
    "0xA964F91E46AeC7210BF3ba8A5beC6d88C4338564"
    "0xaa32C64EA2d3362D5d763383a5073eF622D74a21"
    "0xadB5b431FeaCA451260ae8312392da1F1971448a"
    "0xafebF82EA09ECa9cE1913D68fe053226deF85732"
    "0xA835fBebEAa62A1F125Fb0710C570A8C968cEbB1"
    "0xaC0d083fFc67bd5793581C80c164522F7cBCb50F"
    "0xF6722A8e80Dff0CB1DA463F20c159ff17bca023F"
    "0xF4d2811C6B407F19FDd0A00Ab6D8a488784024f5"
    "0x3Bd5C40Ddba9aa5f324352993ebA00F295B73f34"
    "0x3AB236852722b09928cfab1e50A8E6584B672053"
    "0x3B44cc9eb34ff53fe762e7FF06c9f0AdDCBfC5A3"
    "0x3df9b5759C9D851e56a7fa56EDdbce19CE0839bf"
    "0x3cb9F2120Ad5F5E1d58088b261053B62CaC0cdE8"
    "0x3dbb2455A26B38a69b32E8c2fE36F5eb0a8CC84f"
    "0x3D88FF444D18F7bcC530F5f5171048e725AEc79C"
    "0x382D4e40499028E1Db6a4260B004d4d49a19BCcD"
    "0x38E3f62bD67509953e3b79A2ea1F03F46ae229c0"
    "0x3bb7651a6DAbC7A7D81d2b1415E985D2461e05AE"
    "0x2a9ec4fF5e0f3193282973E85093f048CF70Ff3D"
    "0x2a9C06DFf63D7EC36c6dd4BE5f967227925a82bD"
    "0x2C5fe5aEA5036120b81f90F291685278478d5692"
    "0x2C7a06d07BB8Ca11dD5C3935ca812bB7C3d75A8A"
    "0x2E8E4e380027bb7A4D6A0e7b8804B0f646DFeb7a"
    "0x295DC764329652e210C75E228F577f96e734F3F3"
    "0x2D93b9865A0BD11FfD46cB0CE8f502086Ce9AD3F"
    "0x2f11C82ba2a74Bb3Af08c8141e8B0dBaE969c439"
    "0xe9CCAC50bD049e087fd33AC6a859230a88335349"
    "0xEF503B00aC454b2DD0C65292cDd7f943FEba9C19"
    "0xEDfa5429Ba86204b2E48379dB2C9D081A41D7C6B"
    "0xEAC34419A632CA4070DaB0355cf702F18f827db9"
    "0xc465068939AAC06E5F0f114e42Aa491e4EE55AA2"
    "0xc55c56F661eD185103839FdFeFd80DC38938913b"
    "0xC364303c2217a1a28C222554716763446b9ddE06"
    "0xC4b6184BF85464909B3Df8C77D0cC03f610933FF"
    "0xC5a5DF96423B936E9FB943AA2B9e9a783b106480"
    "0xc2DD9719E1dA0f67AF0764cD5470802cb7e6B854"
    "0xC3291AA11fDcF9B63531a1Af666d7Ad83fa7854B"
    "0x6a852d9702FA44dcc0Be0A782691A9fB9EB3Bed0"
    "0x6C69d1714da69d3C3aA1a0c4F8A9Ee5D6E03040b"
    "0x6e359940cCe7dBD14444a118EB69b7E5a8FB66a6"
    "0x6e3615578043a02c337B3cF43A359705f9Cb3647"
    "0x6a4c854F998760528394482aBBdD15473865B0fd"
    "0x6a27ac4eFcC910F60180D20f5bFE4e67Df31f1Df"
    "0x6c9B2f228739A15D3e9FEf4d2324767dB9fC8d50"
    "0xcC7f1172a36f97c15a24B60EDEeC73FBe868DC9C"
    "0xCD4A4846A9F2e08052dD2E6AE312964eF5Ba4dC1"
    "0x4Bce14B26f1E52662956B0f68350A4E609C8e7c3"
    "0x4bC202FfeC37C00b27AF994e9cf00A23aa41373f"
    "0x4D610f66D76bE5C0A28Ef1e118c7327478818f9b"
    "0x4fAE909231089CAF48419afdE2685954078B0eFb"
    "0x4e169840Ed1f8239e9Ea44C1c4e8db68C374256D"
    "0x4ca94bff694C232A13d29953e5654dC269a780f4"
    "0x48780749F5dAbef39C55489671764aFEb009B432"
    "0x48E01bD65D9102504d3A9bab94aFcF63D1CfF7CB"
    "0x43dC87eE75739d0559537362A031a7a80b97d8A4"
    "0x4453Ae828F26716E1fCeac28c0aa376b550f9A0B"
    "0xbfCD9d1dbe58C5da9EcF9d49ef766b776d99C4C5"
    "0xbF2ce1154ee136cfC0f71Daa9bBb1Fb3f191d06a"
    "0xB93A4b5F7C6Cd422cC78d12201CDE90881fF7f05"
    "0x946B6607baD5C40dA6A47755825Dd3AC32aEbE3F"
    "0x9468D7b1B5e09C94e7aE9493cB4ceb2BA4B3e21c"
    "0x956dbfC48077d1C1EeA9F4DD2C4399c73c74BE74"
    "0x951020A7047483d09173aF5d71B7C9CF60f273f6"
    "0x92734c45E1c10D3159604B3cEf00133121Ba0e37"
    "0x92283c8a65581a80A1fD765dc2dAe342885EFf91"
    "0x9414fD72e7896e9dd041c31504B687B93bafBF54"
    "0xB354B050702385A328e8F30B2Ef4f4CeBD747153"
    "0xb26aa1ff4442BaCB4A1C8d71754a6724a1aA9313"
    "0xb275d877b4598fDE4E25a225C0fB458b58D8ee70"
    "0xB266805B585266E92CA424F3a08019E19f0E4782"
    "0xB5ca61659C0e34F911D15bC7E72208b6fe7B38ee"
    "0xb48A83BF2d13e6791080e09802C5D85C9d756B2b"
    "0xb6Fe854576299b38cd3794392CebCb8fa8450974"
    "0xb06B72a4b791E856761dd95D67C7c37a270Da380"
    "0xB4018FF5B888e902bD952D6e55A5cDbd8C73Ac1A"
    "0xB2ED0355675e9036FFe349d8Cf1C323871a4B908"
    "0xB2f6918a4C8DdC85c33593E39567e70005C382c9"
    "0xB1A492793E34E9a74Ebef2E84A8c36B5196CeEbf"
    "0xb108BF4945Bd7975cF974f47476e689ACd542F23"
    "0xfBDcE66bDf4e7E6BC99Cd36db2ACf2a2206cb2B5"
    "0xfF5cD6215cc385258712F55F4774e0a1B983bFEe"
    "0xfb577B50441E7Ba769e30AF0920bE95b4e984Ca9"
    "0xFE6F41Ef98fBa9CD1d0e7F9A7D58069374517264"
    "0xFF1239e6c529b764161F5A6dBf2e24dB7e81e292"
    "0xf8B0D9d2CA82fD01Dc333259d03B2f01549813E4"
    "0xf8b9f07AF2cb5c2cF3af59773147c6802C9413D5"
    "0xdD3ae488c99f0C722d7717955AAcBEa64989c77A"
    "0xdf8b9A8963Ca4559FeBeA2DcaC899871fa53cD37"
    "0xdA02B0A702c1e3F232851208575FD11d505Ff017"
    "0xdC8FC4499e96642f8175087e21679f4edd94A044"
    "0xdFEc4fba70443BB3E1a614Df4BF7F122e5344393"
    "0xD9a43e2019590eBD3151Dc72B7cAA24f2104d587"
    "0x9F75AD147d28Ca5740512d6af499a9d354565F62"
    "0x9e52Fc1EC8245EdCfF18b24Fe97728687D0f4D63"
    "0x9a68F96C8cC59AFF169bE5417dE84930439873FD"
    "0x9dca3351B92bcc41F2d856EA1E10221e59A23A24"
    "0x9c853a725C09f8F7238827Ea0E2333A7E7D9e4b6"
    "0x9d86e9DF05E3739D55Ef1CF187EA51BdDBB16a51"
    "0x9EDA89b2F35f092677286076FB4170B0e30F7723"
    "0x9cC63D526b99289aB66Cb6D9aA08161a8fC0FdC3"
    "0x9af5889d3656f25ee9587BcA7cb7323A3E7c43Af"
    "0x0AB2FeBCEFD498758071f5Bd83dB5E1213272c41"
    "0x0A87b64dB9631Da3a8049838f3DC8C32Ab7bd47c"
    "0x0a85516793405f87F1d5E3bC8AF59C28D799C252"
    "0x0C7cf20fC644Eb17bE10c846994312D1a62de195"
    "0x0f9A613342981685F8A121fe9e4e4D3f75667D27"
    "0x0fAe137278B70366BA045CB2b9b4b4583310ce18"
    "0x0d95cFDC46C9F3322e5BBdd58aa0FE9386742294"
    "0x08caE7003DDaEE4468cc9ABF80Ab527c8371325c"
    "0x08c4596B157EafAE5EC4E0fE629005Bab2a10C3D"
    "0x09119906960e6Bffa575E15Fb630a478d5e21eB0"
    "0x0891879f8731A45540784038b9597aDEd7a91d5e"
    "0x0886775BdFE3eAF241De5052e5d07F09a3900F88"
    "0x052745C443A34716787608B78D997DD25b2146D4"
    "0x06B624DC319E86AA8A09d801708aa853e4899FcA"
    "0x07a28C2D76557457DDB010071826DAdDf8b95744"
    "0x01e3D42A846185fF52329726e38Eec13e2E50694"
    "0x0242BA1236e38eD9C1AA6d7e8948493d4bb4b45d"
    "0x05Bdb096a46A57b057A839a7a21de7f699851C1E"
    "0x06E8aFb383821f1d7c9e16F76aBa0b0a593eBA78"
    "0x00000544523659C4809916aD742C9bB72a8aCB68"
    "0x030Eab9DA296F6f2ac0E6bb31cB248D8847Aa41b"
    "0x01120203d10346455fb098974E9cF343AeB5F800"
    "0x1AbE65566F48538Bfb0025f18CD8096E9B6F152F"
    "0x1C6CEcAD248E6c9edfd40772D77f1e54C20dA916"
    "0x1D283773701eF4E8b54Fe5fBd8DF7519875AAAcf"
    "0x19595C5b496c17338c72FEfe712FeC39B53c41f2"
    "0x1f766565bC6e274A2D6b7c5b918F7Ab41d9Aad4A"
    "0x1b761CFdE9eEe34a72266b7AA73e3E369a03cfC6"
    "0x1a43b03ED7A6b3A90480aE3C9FaC2508575b9254"
    "0x1a44989C9bc56Be05f681df08FE5d85fe939179a"
    "0x18d5C90feA2B3Eab7b2E1ff2BfD2d6b795cBf4E1"
    "0x1ACD91e3A3bE0C737C9161A086C62e84a58Ca5D5"
    "0x199ab5952c437048CE9026b351190F856F3AC2FD"
    "0x82B45B9B58Bc79ab9b9d45201A210Ec68ECcEf4D"
    "0x86aDfAaFbBF49807095C13499CB7b34D2013d8D7"
    "0x87991c835f7c44c97D75bbE8111Ffa9ec117eae4"
    "0x87D343b6b6EF215B960B528ed37500C329D4fF8E"
    "0x87E7a198Fb3bD11cd15DC1Ff983b3F2880690be5"
    "0x8009e6a2C31Ef155F703111708f9893a19b5E600"
    "0x831bc00747cd6cd09d7F31d5Cba6B3d53fE44A8a"
    "0x83BcA312be5020601BcCcC3647B3Ba70a89Cf2df"
    "0x81206CFb4bCc8AF6208a561c96F6EFBc57Ed467E"
    "0x5c57932Bdf3bf10AE7Eb0517e71378339D85e8C6"
    "0x59697999E442a419E34692Be2fAD0398BB8d4C58"
    "0x5a2FB9A6d092151C3E589EED6CE65a60e705746e"
    "0x5BB0cb1b518BEAd0FCd8D99f22CB71573591C6Cf"
    "0x59bBD58C1AC3371aa1a876503170Bed8fFebE477"
    "0x588e2cda52B02a85d9dc3d150778183E14A078e8"
    "0xE3dEF1F4db7Bc4d8a7d77160698E0bA6FD408cA1"
    "0xE3C27c8F9E954dAa16d50F568999a35AF3B50eaA"
    "0xE4760aE4A8C0e9482BE120275F69098C33c0d685"
    "0xe457F3640587F40B6C67335EA103bE8fEC375Adc"
    "0xe22D725E515691A7657209C2DECf21da924d03d4"
    "0xe218b69Bbc7Ef6D89DCbaaA7D2FfA5dE7E13D7bF"
    "0xE5b2B811Da362F5a63Bc09fb14925Bc17C6880A7"
    "0xe05941d0919D058cfbB173655178201721002DBB"
    "0xE1AAA8730aA842a104770079895958D88a9eFeE6"
    "0x63e7E9BB58aA72739a7CEc06f6EA9Fe73eb7A598"
    "0x66a38C58Ed79fCF3eFe811C7B1db95f964862f69"
    "0x660992819f448614EE0C7D8aaA1A2902855c2b53"
    "0x6667e90B789Cc04981f090Ad6A03AB691934A497"
    "0x6315bC26756D3F72916BAaa9074166481b22C250"
    "0x77A6cBE79F13823495A5ec4678016CA02bE07c06"
    "0x7151E955f858be94EE430ea7b205Bc0C364BBf85"
    "0x70D9f14EEaf248E863269e15F2A4D6a2259Fe00D"
    "0x328C7dDF3F97B4dDc1cD0C1e9F1BabE84e2D3b84"
    "0x34685B9B48Fe60502a7d5119C43F05f7Aa49cF02"
    "0x31D3726cD534088255B2E173d2b2f08B0087F237"
    "0x31C3c0fE3a0f1DEC605236Ba588D37Bd4E317dBF"
    "0x37778279b61Af68DC5C4EBd063dD9a15bb28Bd77"
    "0x374489D7c10329975cfd06478fC42bfF97525d01"
    "0x35BC056F8f3D4F4aC2e8ffA960945bf7D4f027Eb"
    "0x36e865ad7Ff6ea1dF05919151B56Ec95B1FAb3D1"
    "0x30Ed02776fA5Fc74D7DFF3c6b942D49C887E152F"
    "0x30Fe2adA5c5E86105517664739c9067606057aCE"
    "0x30D761E026F65aeaBc460855ae04B12a31A3f0F7"
    "0x32cB9403A76038D78D3c221E018aa2BbF27a74Db"
    "0x32EEd650eB479385019efaF9a894B79b1Cb663eD"
    "0x3334A68948dc2fD0771544cfe05AF5Aa0Efde020"
    "0x22B8dC44e727f0Fb1b4A96CAA11aDB7ffa68DcEb"
    "0x257fd9ACA843021399C2B953f4d710355D85a443"
    "0x25347d09373B2644191f1DC4beDEFEBE26a5b2d1"
    "0x253a02FC811Df6A48aC782C0b1167B798aF42009"
    "0x279aaC771Ba255EC728403BF5dA323Cb64C5E298"
    "0x22618207584D1C1E849Ada5cB640F578E3704FB8"
    "0x26d34D571e2B2730EEA438A9Be12f3C2e765Ef60"
    "0x161D14f3a52aCAbCbE3bE69349cf2778623E8530"
    "0x134475687cB3c690F8eC445AE29f2174E31b1238"
    "0x126616fc75652E45EE28B6E22f768D8E3D01e8A0"
    "0x133763F7d93f2bC4241f9855F71bE5042f020A20"
    "0x7D20F00d8ad982AfC5d72dddd4692fb3b2c32F93"
    "0x5d90f42dCE7f71775D95dCC4164316DbA5FdC238"
    "0xb212D33659B94bA786956c8523Dbb594E84FE28E"
    "0xC28e53177995691e2907e29c41eD24C74947dd71"
    "0xa9edda8ccde98b1B27bd0D1a8E08D46352eb503A"
    "0x9443452136FCA45492Fcb84bd84C7Ca302319490"
    "0x86f597C36CA9273067F4cAd92b67b28a6Cd8785e"
    "0xA318F2fDdf3B73B1F5b704fc16c3245145d7c53d"
    "0x68c65ce4e666c820497Bc8745F7b8a62D9A7F13a"
    "0xf41dd77ff5f5F09f78d801e74C8B107c7A0298e5"
    "0x68822e468E0773e16D85766Dcb3D29669a04da71"
    "0x9862c5343229005B5Bae239CB99000ACcD7F63B9"
    "0xbE5316EbbF9F5b8251Bc6A080e3DFc1e361e52F2"
    "0x11Ea6A6eFC79c3B3b8948701133AE6BAb66A1FE9"
    "0x2B04C6adD43C2E716108A583e5Ded8AD91E6416d"
)

CHAINID="tserv_43970-1"
MONIKER="tserv-0"
KEYRING="test"
KEYALGO="eth_secp256k1"
LOGLEVEL="info"
# trace evm
TRACE="--trace"
# TRACE=""

# validate dependencies are installed
command -v jq > /dev/null 2>&1 || { echo >&2 "jq not installed. More info: https://stedolan.github.io/jq/download/"; exit 1; }

# remove existing daemon and client
rm -rf ~/.ethermintd*

make install

ethermintd config keyring-backend $KEYRING
ethermintd config chain-id $CHAINID

# if $KEY exists it should be deleted
ethermintd keys add $KEY1 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY2 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY3 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY4 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY5 --keyring-backend $KEYRING --algo $KEYALGO
ethermintd keys add $KEY6 --keyring-backend $KEYRING --algo $KEYALGO
# echo "asdf asdf asdf" | ethermintd keys add "Serv-0" --recover

# Set moniker and chain-id for Ethermint (Moniker can be anything, chain-id must be an integer)
ethermintd init $MONIKER --chain-id $CHAINID

# Change parameter token denominations to aphoton
cat $HOME/.ethermintd/config/genesis.json | jq '.app_state["staking"]["params"]["bond_denom"]="aphoton"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json
cat $HOME/.ethermintd/config/genesis.json | jq '.app_state["crisis"]["constant_fee"]["denom"]="aphoton"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json
cat $HOME/.ethermintd/config/genesis.json | jq '.app_state["gov"]["deposit_params"]["min_deposit"][0]["denom"]="aphoton"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json
cat $HOME/.ethermintd/config/genesis.json | jq '.app_state["mint"]["params"]["mint_denom"]="aphoton"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json

# Set gas limit in genesis
cat $HOME/.ethermintd/config/genesis.json | jq '.consensus_params["block"]["max_gas"]="20000000"' > $HOME/.ethermintd/config/tmp_genesis.json && mv $HOME/.ethermintd/config/tmp_genesis.json $HOME/.ethermintd/config/genesis.json

# Allocate genesis accounts (cosmos formatted addresses)
ethermintd add-genesis-account $KEY1 64000000000000000000000stake,64000000000000000000000aphoton --keyring-backend $KEYRING
ethermintd add-genesis-account $KEY2 64000000000000000000000stake,64000000000000000000000aphoton --keyring-backend $KEYRING
ethermintd add-genesis-account $KEY3 64000000000000000000000stake,64000000000000000000000aphoton --keyring-backend $KEYRING
ethermintd add-genesis-account $KEY4 64000000000000000000000stake,64000000000000000000000aphoton --keyring-backend $KEYRING
ethermintd add-genesis-account $KEY5 64000000000000000000000stake,64000000000000000000000aphoton --keyring-backend $KEYRING
ethermintd add-genesis-account $KEY6 64000000000000000000000stake,64000000000000000000000aphoton --keyring-backend $KEYRING

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

# disable produce empty block and enable prometheus metrics
#if [[ $OSTYPE == "darwin"* ]]; then
#    sed -i '' 's/create_empty_blocks = true/create_empty_blocks = false/g' $HOME/.ethermintd/config/config.toml
#    sed -i '' 's/prometheus = false/prometheus = true/' $HOME/.ethermintd/config/config.toml
#    sed -i '' 's/prometheus-retention-time = 0/prometheus-retention-time  = 1000000000000/g' $HOME/.ethermintd/config/app.toml
#    sed -i '' 's/enabled = false/enabled = true/g' $HOME/.ethermintd/config/app.toml
# else
    sed -i 's/create_empty_blocks = true/create_empty_blocks = false/g' $HOME/.ethermintd/config/config.toml
    sed -i 's/prometheus = false/prometheus = true/' $HOME/.ethermintd/config/config.toml
    sed -i 's/prometheus-retention-time  = "0"/prometheus-retention-time  = "1000000000000"/g' $HOME/.ethermintd/config/app.toml
    sed -i 's/enabled = false/enabled = true/g' $HOME/.ethermintd/config/app.toml
#fi

#if [[ $1 == "pending" ]]; then
#    echo "pending mode is on, please wait for the first block committed."
#    if [[ $OSTYPE == "darwin"* ]]; then
#        sed -i '' 's/create_empty_blocks_interval = "0s"/create_empty_blocks_interval = "30s"/g' $HOME/.ethermintd/config/config.toml
#        sed -i '' 's/timeout_propose = "3s"/timeout_propose = "30s"/g' $HOME/.ethermintd/config/config.toml
#        sed -i '' 's/timeout_propose_delta = "500ms"/timeout_propose_delta = "5s"/g' $HOME/.ethermintd/config/config.toml
#        sed -i '' 's/timeout_prevote = "1s"/timeout_prevote = "10s"/g' $HOME/.ethermintd/config/config.toml
#        sed -i '' 's/timeout_prevote_delta = "500ms"/timeout_prevote_delta = "5s"/g' $HOME/.ethermintd/config/config.toml
#        sed -i '' 's/timeout_precommit = "1s"/timeout_precommit = "10s"/g' $HOME/.ethermintd/config/config.toml
#        sed -i '' 's/timeout_precommit_delta = "500ms"/timeout_precommit_delta = "5s"/g' $HOME/.ethermintd/config/config.toml
#        sed -i '' 's/timeout_commit = "5s"/timeout_commit = "150s"/g' $HOME/.ethermintd/config/config.toml
#        sed -i '' 's/timeout_broadcast_tx_commit = "10s"/timeout_broadcast_tx_commit = "150s"/g' $HOME/.ethermintd/config/config.toml
#    else
        sed -i 's/create_empty_blocks_interval = "0s"/create_empty_blocks_interval = "30s"/g' $HOME/.ethermintd/config/config.toml
        sed -i 's/timeout_propose = "3s"/timeout_propose = "30s"/g' $HOME/.ethermintd/config/config.toml
        sed -i 's/timeout_propose_delta = "500ms"/timeout_propose_delta = "5s"/g' $HOME/.ethermintd/config/config.toml
        sed -i 's/timeout_prevote = "1s"/timeout_prevote = "10s"/g' $HOME/.ethermintd/config/config.toml
        sed -i 's/timeout_prevote_delta = "500ms"/timeout_prevote_delta = "5s"/g' $HOME/.ethermintd/config/config.toml
        sed -i 's/timeout_precommit = "1s"/timeout_precommit = "10s"/g' $HOME/.ethermintd/config/config.toml
        sed -i 's/timeout_precommit_delta = "500ms"/timeout_precommit_delta = "5s"/g' $HOME/.ethermintd/config/config.toml
        sed -i 's/timeout_commit = "5s"/timeout_commit = "150s"/g' $HOME/.ethermintd/config/config.toml
        sed -i 's/timeout_broadcast_tx_commit = "10s"/timeout_broadcast_tx_commit = "150s"/g' $HOME/.ethermintd/config/config.toml
#    fi
#fi

# Start the node (remove the --pruning=nothing flag if historical queries are not needed)
ethermintd start --metrics --pruning=nothing --evm.tracer=json $TRACE --log_level $LOGLEVEL --minimum-gas-prices=0.0001aphoton --json-rpc.api eth,txpool,personal,net,debug,web3,miner --api.enable 
