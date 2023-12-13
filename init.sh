#!/bin/bash

KEY1="Serv-0"
KEY2="Serv-1"
KEY3="Serv-2"
KEY4="Serv-3"
KEY5="Serv-4"
KEY6="Serv-5"

# List of legacy validators (replace with your own list)
LEGACY_VALIDATORS=("sx100e8xnhclh9sth9l5jqnywgwfckpf56vfew4x9"
"sx102lcjqy44ett8wu07dxdtce6gm988j0eqc2xuf"
"sx108uwrdejhf3es7rn6h4cdjqnvnpv75ppzzu0ag"
"sx10j0tswg6x4udqafvsetjj3fl0g4e52spjg8j56"
"sx10p0lx4ld8zwkhes7swv4pwzjhnegsm7dr3kvp8"
"sx10rcp99jqrtdg7jtkwzf7xfp85thef08fquas8y"
"sx1268nfdmaeccm8syy7e4ts4zfs0qagkcchktjwz"
"sx129gp9e7ghsyecxevp4che033dmk0sew7v8y27h"
"sx12htnm28u4vgjwvy45v4k9eavgmllkwqxsfznm2"
"sx12jell2lqaesqcye4qdp9cx8tzks4pegafnul4m"
"sx12szkssdcwttafxtayvq3l07d6ktaz43xpenvfs"
"sx132ggm0mgxdt4l8etud9e5gzpv8psgx30ahl65d"
"sx1362p8nrtqymc9a4kj8gxlvc6l25cemmlvxwghv"
"sx139wxucm2rl0aag8ej24r2rh0qk86dylvvtw5s3"
"sx13d4ayjcynp55t8auv3w6cf5azmn9wfdf3utqvw"
"sx13e022esy83vtalcal8fgcrpn66qls5dzaen3c4"
"sx13e4q0llwd9m9zvc96lxjf6re654j9x48m7gty2"
"sx13e8wkzupwd5llnls8ystn8rcl0gvyycjzs2wl3"
"sx13hr88u4zjrx2rf9gkdchawppdnsrctunr055sh"
"sx13huhkfy9v0g6ygcptghljmem3yas3cea9pd8vc"
"sx13jewk8w7jah3r9jfahh8rlzpr5r6valav39nl7"
"sx13jhphrfzf2qhexqgaqufu76hg6ag934f0uttnl"
"sx13kyypuaczvz7jdl64lht99m0xfqekxd3435k9k"
"sx13n974xtdzxu4uu2ugz8e2ml5p8t94d8xdz3a4d"
"sx13tm8axx8zrz8c9m9ps97vnpwm06dgu9mlygdx2"
"sx1427qn37jngpu78lrdaw5e0q923jjcjkcl5ehrc"
"sx142jxj583t60fktsxe74hryllp6h2krjwgm8c47"
"sx149j0j8jx4mrjzzlnh299hmrd3rzr8ptytlct0g"
"sx14gevvn4z6vmz6htkxwp62pe77c3dwj3pk3ylgh"
"sx14k6mgv074jj9zfs2aqcj8yk6ruvhz3y2yvunhs"
"sx14l4lst4qnm9fecv38450upfjym00s4ej7vn5f4"
"sx14q6lh6l25c4p7yjlkpcsc4c23jtge6a3dyrzyl"
"sx14sxss0luv7740y6crjqvzezj9a7tedg0nn8mm4"
"sx17eez4r5qmlcvk8dyv0eqc9vl79au5q3lvp359t"
"sx17nfgz8rtgpl3nlws5q9tdk9y3puyqf84z52xh5"
"sx1802ugrwm4x497vjr22vnawsq722mw0e567ajvu"
"sx182erdpf8y2cfj2x04v09p28xtp9kwgzn5fprcw"
"sx18dzve84nfl6nlemzullsdj0s4hwtl3drku9hv9"
"sx18hum2avunkz3u448lftwmk7wr88qswdl49ylfk"
"sx18julyys26h67r4vq3zexzpfmvt9vpn0gzaftl3"
"sx18kajg4dzdvu2dxejarp0udh4av9gejz0yegq5n"
"sx18ky073zdrrmme3fs7h63wyzguuj6a3uu24sdvm"
"sx18qk5uszfjq5wrkm2gfstqpx56jdpn0xdfajd0m"
"sx18r3lv27kw5ye203m0x3w58cr734wy2wqpnhmcw"
"sx18wmk2xnd40r60kqa9v2pt6v96frpupdw53ue3t"
"sx1920vfl67pucex2pfw059pylsfr8hplearvzg94"
"sx192wqdhlk84lvxmrd6jl9l9njy7f94q4ad79m6r"
"sx19307tt49qdsjpwqljrefz6zj0prc645jajf0hd"
"sx193aqd5rmhr9prh2u8y6u4qftklpawk52nk0nc2"
"sx1968yuwqqy7ah5nt2peacsp9s7erdl6m6yqvuxx"
"sx199wuwepjjefwyyx8tc3g74mljmnnfuln7qkp7s"
"sx19kfmnpj6p0g3ll2xevxw3agzppkwntflx43gt3"
"sx19ugus2az5a9m8tcgeq2pazcdht5kn3pemnad33"
"sx1a8x2c59aqj0qsl7n8tr2skfrp2yrx56fe4caa8"
"sx1aagrkq9vg49jm5xx22fvm4leg0lt48qeqg36g3"
"sx1aha9g2d6scsyktjgx7wm9jwssxjp6lrtrwdgp0"
"sx1atp5gxdxxt9yqux6kq64eacz7x8cyldewf63py"
"sx1c3jsdzfe4tqxuhc0z98y92jfre8w2k4zzt52c7"
"sx1c4w9danpa5v9zqurnl07lkqdcwyn3yfmmn40y3"
"sx1cdjrq0pzz7s69rpzy428zemrg34emhsxvpjywz"
"sx1cjmpsjlc23jfpxealrrh6rxq8assjvllztd2x5"
"sx1ckjal9jz8wfka8aegw4zh8560qa3qeyqaa3th6"
"sx1ctwewx0pmg8k0tc8vnx4guyq9jm7dwz52v0hmk"
"sx1cv534gglmnumvdf35xhkvmt6mql60p2tjdka3r"
"sx1d2zjm9czlfzdes97pfuzdydflw0t80ksa8chtt"
"sx1d35azu2d56wncw4p5rz0320wt4hqxpqte2fwz9"
"sx1dc6ejsxvuldaz3zy5yvwk6dhuk50ke4x0nqgju"
"sx1dcmp24uqgwszcvmm8n6r5dvhqhuukdj8xg7577"
"sx1dfxg2nuesas99qu5fq4thhg4guuxtv8ay73trm"
"sx1dgn6cnhueyg0vqvq6g84hljwvl0nruwlhulqnf"
"sx1djdj7g588xs4605laaxjxfrk0kuler2sx44v2h"
"sx1e3l3zu4rd7tuzk3ykc8damrnl05x3hyuvhazqj"
"sx1e49ys34f7tsgq5ka9e4wxy5kfm6m5nwp427jrg"
"sx1f08pfvn0refxv22kkrmgx59yucyu3e7r8cmrtk"
"sx1f0pq9llvxlqqkfa0n98feuq2yw4yzdellmezhf"
"sx1f4ss7ekhd0jupg5w78s333ejw3ugrrumamxxks"
"sx1f7hfpy33pzw27jzpnt77y6ze2srckrhmgr6ftp"
"sx1fctfss8dr7prn602gnquf6xmdrphgftd42sprt"
"sx1fj55hlmffs3j5y7jn9f72e2dcf560q85969fk4"
"sx1fpuqwj04m2l088z4fzt8zaj2l6cqndpjl6cncf"
"sx1frsph4jajyp9qnf6nw4eft70v0gula7taznq8q"
"sx1g0wg0mn4wwws2k2nwd32qvd84q9e0k9ydur5e7"
"sx1g3f6aq50yecku87w4s5vp23hdd2slxst3u0mnq"
"sx1hlxe68d7trza48k0n4y77antwaken3x9egqj6e"
"sx1hukwz92wuymvls8hrk4fhwclk0cer5r24xe8cc"
"sx1hyaykhmudn2z9nrc6y3qrn0fpzql7lc9rynml9"
"sx1j34kvpa66hzqmf4ywa2cyhwn4se2a03ls7ws37"
"sx1j35d0vd4uzwffeawjjfukn8t9wjt8csu0p6nxz"
"sx1j4kml3yqwlgurm4f7nwjcsuecu78f0n5cch8rr"
"sx1j5gzpfcywjpapytn4awhrd7feas0yulkewn0qv"
"sx1jfe5c30pcyxnzktqfv7w7qqnxysm5r3hrps5yc"
"sx1jg5rezn9tqdgpg0awewu9khrg2y9alu3wmfy35"
"sx1js206uh839hfm5zpcv2sfd58hya6l0657krmvh"
"sx1kd2tq5rsywz6x28g7v9jaa85e67hgu2nlvhhah"
"sx1kf42rl6yg2avkjsu34ch2jn8yjs64ycnf6djfl"
"sx1kf6asaa5tx8aun395gjup7693dvd3mnstlh796"
"sx1kfngqk6c2fnwjt9yyne6pqqeux0su3uzuxvgcr"
"sx1kh9xzevupc60jyw3t0r7wgsgkml8kw8wdr2dnu"
"sx1kj9g80edz0n8jyyquzvq93wctjwh26et8p05xt"
"sx1kmlg23tk9xdn3nfhjsuje67t375y2zt5554hgw"
"sx1kp4h9f9hj859vasam9wk037r0gnsmguqgexdzq"
"sx1ksqcladc3r5s90v494h9tfwdhkx88tq6waaedh"
"sx1ktksx4t8t6grdllrf8vv78pj8pc6fwggsmluxd"
"sx1ktmfrzjv3hwgtse4j03e2el8qqzu8qkf2mnl7x"
"sx1kxjfy7f7xn56wn477t5y4rpkk5vkem4la6q29u"
"sx1kyyt7j29h4uhtnuhfar5wmngntx4gterll9myg"
"sx1l0wwv67lfelxhjvu6dkm9t8j5gsxev44rjjvt8"
"sx1lawdvg2ucwzjtpcj7405wa8q5xuc80lwymynpg"
"sx1ldthk5zyrea6w60rptcfyzlftd8fsn9ftl3a5n"
"sx1leh5rmuclw5u68gw07d86kqxjd69zunyd7zduu"
"sx1lufrnek99xmkg9sltfkm7t3ymdlgrc5juq2s7l"
"sx1lzcdn5k2st7srhpnxfvaqwe0q92fsylyfpf3n5"
"sx1lzulq7hjedwzeua0t9mnz37xsqkfgy74yu0m3t"
"sx1m5awfzxfnux8ytthz7244t975eycn3m6j8rs2s"
"sx1m79e4ztrefz4nl475tw2ezvcw8a98nfhlt768z"
"sx1mgptpfczc83lyv59zgy9wh73r4g9luqhvmvp2e"
"sx1mj8ugjv7jejzlqt4pplzzeulfmwefgzyrtvywh"
"sx1mlkylwnsgsam8cdxzn05hal3ytjngsunrgnawl"
"sx1mxjrugqety8t6v23m3et0j4zfussf4v82zvycw"
"sx1na6669ra9r99wsz39440fxdf6d29vhmzmj73ns"
"sx1nef0c8kgy30delcckf87jaegdp7s7ntr26ypkl"
"sx1nf50jmyvckd0795mu4qhm6zfxppesula4s67gj"
"sx1nh9rx5de90xyrukc2m4puypzrev6yw3yjjg3l2"
"sx1njzn5ujup8u0wgugyl4qugen5lnane9kl8ya2f"
"sx1nkrwnhc9udee6400rncc06j3hhdmz6j3yk6npc"
"sx1nmdgnvhntuyjvaegvpm0kstskr3s7aerpyrxf3"
"sx1nnrr65ntny5f4dnvkmv65zqkr28uplwr6r9q78"
"sx1nt6c38fk2me9a62c0098edej8gl8csa00qq3wk"
"sx1p2e0a0806jv8tqr37k7c8k67zgfjwtzp4v4ag8"
"sx1p2rmvndevvw682qynqu08hyvx24hh4ru0exx90"
"sx1p2z4zeungp0c0uw4uw7g4avu9rtensjjqkty0j"
"sx1p370yr7xgn4300sseprfjscj6xnzmcv4ga7dtg"
"sx1p7dxzv6znqtgt79py8lfunjd8a6kvlf8g6mez5"
"sx1p7hpxunckupkdwsytjetnd95tqe3pnscygxfc3"
"sx1pk2ulhzxe8enytjmhh2c4g87jwr8gg55kld5gm"
"sx1pr9wwqpamthyg6xvn2lcp26j0jphzvjujrzc7c"
"sx1prz9j6c406h6uhkyurlx9yq9h2e2zrpav2zvey"
"sx1pygejp5kpe4llft4u90mvv9y0r27y84s3gaap0"
"sx1pzgc08u8xxj92srcgqutjkt6mmt6j827mtpa5m"
"sx1pzr8wk7lu040ysw72pfwt5rlpx3eqrugj572rm"
"sx1q5n5t3zr5dr3v7rkpzmcmxta6fdjz3k520ghvn"
"sx1q6mzfhp3n6r24zsfmqqhpz4g20jgn872se586a"
"sx1q73gcttk24690hdszqr3sfk6mhutj46ykrruym"
"sx1q83ag25yvxzl753jjunw8rhvz03w2p553639hk"
"sx1qfpt5y3kuw8dnsd2d4lgjjzf849mfdza6t58r2"
"sx1qk7mp94ydftmq4ag8xn6y80876vc28q7vv7a9n"
"sx1qm52lvursg036ly7zmmk4wstpfvnawncvuu7gk"
"sx1qqqq23zjxevufqyez6khgtymku4g4jmg6gsa77"
"sx1qv82h8dzjmm09tqwdwe3evjgmzz84fqmue72xm"
"sx1qyfqyq73qdry2hasnzt5a88ngwhtt7qqf6ykhk"
"sx1r2lx24n0fpfch7cqyhccekqfd6dk79f0jfxz9c"
"sx1r3kwetfy3ekfah75qaedwlc72npqm2gkpdmxc5"
"sx1r55rwumsrm6w3d20uhaa3hm4rxr442k0u0d5k2"
"sx1r9v4ck6fdstn8rrjlml8ztlv8x6ncs0j8lwrd2"
"sx1ramx2edudcn55ttt03derrm6kswe4t229dxp8u"
"sx1rdmpel0fam355u3xdda2w037x6dq8n7xvm894p"
"sx1rfpmq0kh56e6jpyq4c7fltp9ppt4hyj5axnndy"
"sx1rfzf38ymc447qhmgrhcglewctl5nj9u6uncckm"
"sx1rr2ujrl29vl2k7ewrletl5kkk72uha8pz39g6t"
"sx1rtxercarhcx8xly3vxsgd33wsjjcefw4x07vhw"
"sx1rxdtt9fvgdcy3n5sy6e4zxg0s4hn4shauqau0v"
"sx1s269hx6ch3u6hxuag5sp5ggwc68vem6dmy5xcx"
"sx1s6kl4tam7jvqwz2uzdyeedanf5sp8kxhuw43yg"
"sx1s7v3eq6l03zvjlt4h05pz8l6nmq306hyuqjtjz"
"sx1slf58d4kaus4h9st228dxagqcv5afluw746nhq"
"sx1sln6rx8m80g3e52ac8leswel9zqxjzl9suck46"
"sx1sqy7dgkrrmc4tacrzyts37vf8gvmtesqvzqmdy"
"sx1svduqp68e4kdp8tlx82uhf4n65l7gj52unlvsp"
"sx1sw72xy472qsxqx7vesmy0va6wz5feuklkda09a"
"sx1sysxe76tej90vgy22cwfdah0h3t763n7qzxpu6"
"sx1t3tex27l80cs4eltq5t7wymcxwwct6xxqdpz2c"
"sx1t95hnx0yg2jpnc6xj2lzltgrnzac6nzc9nm98l"
"sx1tghmnfksjg23c0jcnmkkeej6vrns2arwug0kyy"
"sx1twcvkx63304dplxcmx0j9jm32u6er3k0t05460"
"sx1txaatrq6cvm34gdgwegrzu97mrl7herhdnnxq7"
"sx1tz8zekjjkq4gtkwu852sw7qc8c22q78grwrqgf"
"sx1u000raxm00zd3f7hw9sxnrst5m75pr9pz2kupk"
"sx1u0p8eru7j4x659k4patgnxdrttem2r42qqz4lr"
"sx1u3mq4e9gcr55s2lpyqn476gf3seup459etcus5"
"sx1u3tlxeq9sl6qkmr8xd02zqa73lkrwkkuwmhxfg"
"sx1ugkhyhj326g6wetjp8pdanepm2fy6q75v7sp25"
"sx1ugvtdxau0mmd38wt42na9la9melp84al0q7czc"
"sx1uketsyw6xch45caup8a3fyjmc97x3q98znyf39"
"sx1upv5r5y3n5zce7a3wdj4z7pqzussqtdmdatyme"
"sx1ux42suc24pp2zprhqpucjk2cmz9falhx0lyhsw"
"sx1v0n7nw6c4fe88xnuasr0d65luult0fvcr9y6ly"
"sx1v63cck8d08708mlgz8rmrku4l9jgvtmf0w4x26"
"sx1vcye9qvlgjrpfmsv0k925x3fq2z4c26ntsp6pm"
"sx1ven7jzmcnnqynq0sjzkk5qatdyvnffyheet5nf"
"sx1vv2mcfn4d5lh9ytt425swstxfqdj9sjsw6qqzu"
"sx1w7nvheulzwprf9d9a3r8sqtv5q47qlqxzl5laq"
"sx1w9g7j40ctzlffmjrp6nmypdupsmyh0u9ndmeza"
"sx1wrvlznh27fywscexnc2l9fxk5gjelcqd080agr"
"sx1x2x8mhelj76dmswdps0f7xatap8z6wuy659czl"
"sx1x359hx6gles9q2na2yvug0c9774ynnczl3sew5"
"sx1x8fhymx4xsygy4dju9ea9vhs3vqg0u3hhxm76c"
"sx1x8pupl36puw7cczjx6a93rfhh48rzldlnfwsj2"
"sx1xamcy7dkrtmgm3wya0gx8hv6zkaj30thzh542s"
"sx1xazgn47pqv5ewh8aqercl3ptl7t4yhgpw2vwaw"
"sx1xk7q2mu084854shgl75kp9zm7l20qfltlm3faf"
"sx1xm5xtttl7m4pmuzery23k4hvjkcl4v73ae08hk"
"sx1xrksyam05h78f47l70rtjsk5njy8u9f0hddes6"
"sx1xrlz4kjut6rpq4ghvernnjgxwcrq27kwu23vv4"
"sx1xrtkrcpx7edw40zxpp26up939gc68u8hjsfsht"
"sx1xt9egqa8vqud0rfuyg0qrz4zh0e85axm5c9arw"
"sx1xthdv58tg7fc2qv7ltu6399hnvwtvcldelt78t"
"sx1xv62dz2gmshaqac4gn87qkh44g80mcpqq9mk0m"
"sx1y2udc388ylc0kx62jm92zxkm0lax3h8txpst2m"
"sx1y4lant9ggvpp8xwzh9flf4csx4wctfzrtj0dfv"
"sx1y5686zfh8vnygxglrhztahh7hcn2tvk3d9c58x"
"sx1y5aq9lyprhm2fzk8stqtz9nm0x90ggqfwxljth"
"sx1y7d2cacm5f27cu5yqwl4mgeredjvtc5c7xquwh"
"sx1yfscyp6cf5wpapy6mfwtvs840r3hqnacfdnszv"
"sx1ymf564c79vnnpm4y8z5muyhnctnktmmq6cf8uf"
"sx1zcw3fua99t9te03mu6f5nne80p3rapfs6qzq82"
"sx1zdz826ruk0rfp78vg3dw98epwn33ky3cqv53lk"
"sx1zfnpdlr4v5hytm3gkm3z7a5d3c7sr69q5n4w3k"
"sx1zvmk8a7e8u4ugfqlnp2lwxl9qshsyz3qlw6rpf"
"sx105s0qrv2mxp2l3wh9hwag6f0kwevxtunlkyny9"
"sx1tkg0gtww0achwhv4mnzpvsckmwjlms3cglydf2"
"sx1kgfdxdjeh9960p54djzj8ka4jn5ylc5whgsfj4"
"sx1c289x9mej453u2g8u2wyrmfycay50ht3xqth3l"
"sx148ka4rxdax93kfaap5dguzx5vdfwk5p6v9udtt"
"sx1j3p52gfkljj9fyhuhp9asnru5vprr9ys2xzdmg"
"sx1sm6e0smv4ynnqel5etvjkeaj3fkds7z7vrhs8w"
"sx15vv09lwl8demradhqn7pdsey29za03fanqlxmm"
"sx1drr9ee8xvmyzqjtmep6977u2vtv60uf6ndycge"
"sx17swawll47hcf77xcq8n5ezcs03aq9x89uttkc4"
"sx1dzpzu35wqae7zmv9wekuk0ffv6dqfkn3aqyuz3"
"sx1np3v2dpj9yq9kkawywwtnyqq4nxh7caefzj37j"
"sx1hef3d6alnadcy5dudgyqu00urcmpu5hj6ypwuc"
"sx1z84x5mhu08pm8wy5suq3xwhxh2mx58lfpqz39t"
"sx19vzvdtw58sh8zcgg5kp7thkc4kg7vstd9huds7")

legacy_token_amount=64000000000000000000000

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

for i in {1..6}; do
  TOTAL_SUPPLY=$((TOTAL_SUPPLY + 64000000000000000000000))
done

for i in {1..233}; do
  TOTAL_SUPPLY=$((TOTAL_SUPPLY + 64000000000000000000000))
done
# Add legacy validators to the genesis file
for validator in "${LEGACY_VALIDATORS[@]}"; do
    jq --arg validator "$validator" --arg totalSupply "$TOTAL_SUPPLY" \
      '.app_state.auth.accounts += [{
        "type": "ethermint.types.v1alpha1.Account",
        "value": {
          "address": $validator,
          "balance": [{"denom": "stake", "amount": "64000000000000000000000"}, {"denom": "aphoton", "amount": "64000000000000000000000"}],
          "code_hash": "",
          "nonce": 0,
          "pub_key": null
        }
      }]' $HOME/.ethermintd/config/genesis.json > tmp_genesis.json && mv tmp_genesis.json $HOME/.ethermintd/config/genesis.json
done

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
