cd ~
apt update && apt install git -y && apt install dnsutils -y && apt install jq -y
echo "deb https://repo.casperlabs.io/releases" bionic main | tee -a /etc/apt/sources.list.d/casper.list
curl -O https://repo.casperlabs.io/casper-repo-pubkey.asc
apt-key add casper-repo-pubkey.asc
apt update
apt install casper-client -y
apt purge --auto-remove cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
apt-add-repository 'deb https://apt.kitware.com/ubuntu/ focal main'
apt update
apt install cmake -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt install libssl-dev -y
apt install pkg-config -y
apt install build-essential -y
BRANCH="1.0.20" \
    && git clone --branch ${BRANCH} https://github.com/WebAssembly/wabt.git "wabt-${BRANCH}" \
    && cd "wabt-${BRANCH}" \
    && git submodule update --init \
    && cd - \
    && cmake -S "wabt-${BRANCH}" -B "wabt-${BRANCH}/build" \
    && cmake --build "wabt-${BRANCH}/build" --parallel 8 \
    && sudo cmake --install "wabt-${BRANCH}/build" --prefix /usr --strip -v \
    && rm -rf "wabt-${BRANCH}"

cd ~
git clone git://github.com/CasperLabs/casper-node.git
cd casper-node/

git checkout release-1.0.0
make setup-rs
make build-client-contracts -j

WHITE='\033[0;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "\n\n----------------------------------------------------------------------------------------\n"

echo -e "${GREEN}Requirements have been installed. You are ready to delegate.\n"

echo -e "* Save your account key (private key) with this name to the home directory: ${RED}privkey.pem${NC}"
echo -e "${GREEN}* You can start the delegation procedure with this command: ${RED}./delegate${NC}"
echo
echo -e "${GREEN}* You can check your account balance with this command: ${RED}./balance YOUR-ACCOUNT-ADDRESS${NC}"
echo
echo -e "${GREEN}* Note: You need to have at least ${RED}3 CSPR${GREEN} in your account in addition to the amount you would like to delegate. It is the network cost of the delegation.${NC}"
echo -e "${RED}* ATTENTION: Try the whole procedure with a small amount first, and make sure all goes as expected. Responsibility of erronous outcomes and losses is completely on you. Authors of the script acts in good faith, but they shall not provide any guarantees.${NC}\n"
