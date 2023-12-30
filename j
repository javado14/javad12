

sudo apt-get remove docker docker-engine docker.io containerd runc


sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo docker run hello-world

sudo apt update && sudo apt upgrade -y

wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.10.23-d901d853.tar.gz

tar -xvzf geth-linux-amd64-1.10.23-d901d853.tar.gz

cd geth-linux-amd64-1.10.23-d901d853/

./geth account new --keystore ./keystore

cd $home

docker pull nulink/nulink:latest

cd /root
mkdir nulink

cp xxxxxxxxxxxxxxxxxxxxx /root/nulink


cp /root/geth-linux-amd64-1.10.23-d901d853/keystore/UTC--2022-09-16T16-46-42.233370072Z--e686bf9b57cec541e0f46f2c0a41bc8836b9b270 /root/nulink


chmod -R 777 /root/nulink

pip install virtualenv

virtualenv /root/nulink-venv

source /root/nulink-venv/bin/activate

wget https://filetransfer.nulink.org/release/nulink-0.2.0-py3-none-any.whl

pip install nulink-0.2.0-py3-none-any.whl

pip install --upgrade pip

source /root/nulink-venv/bin/activate

python -c "import nulink"

nulink --help

export NULINK_KEYSTORE_PASSWORD=xxxxxxxxxxxx
export NULINK_OPERATOR_ETH_PASSWORD=xxxxxxxxxx

docker run -it --rm \
-p 9151:9151 \
-v /root/nulink:/code \
-v /root/nulink:/home/circleci/.local/share/nulink \
-e NULINK_KEYSTORE_PASSWORD \
nulink/nulink nulink ursula init \
--signer keystore:///code/xxxxxxxxxxxxxxxxxxxxxxx \
--eth-provider https://data-seed-prebsc-2-s2.binance.org:8545/ \
--network horus \
--payment-provider https://data-seed-prebsc-2-s2.binance.org:8545/ \
--payment-network bsc_testnet \
--operator-address yyyyyyyyyyyyyyy \
--max-gas-price 100
