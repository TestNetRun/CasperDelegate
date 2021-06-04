WHITE='\033[0;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "\n${GREEN}This script helps you undelegate your CSPR tokens. Please read the messages carefully, and make sure you understand what is asked for.${NC}\n"
echo -e "\n${GREEN}Make sure that you have saved your private key file in the home directory with the name 'privkey.pem'.${NC}\n"

echo -e "\n${GREEN}What is your account address (public key)? (Please copy, paste, and hit enter.)${NC}\n"
read DELEGATOR_PUBKEY
echo -e "Entered address: $DELEGATOR_PUBKEY\n"

echo -e "\n${GREEN}Please enter the amount of CSPR you would like to undelegate as an integer. (No decimals. 157 is okay but 157.0 and 157.5 are not okay.)${NC}"
read DELEGATE_AMOUNT
MOTES="000000000"
DELEGATE_MOTES="$DELEGATE_AMOUNT$MOTES"

echo -e "\n${GREEN}Please enter the address (public key) of the validator you would like to undelegate from (where you have your tokens delegated on):${NC}"
read VALIDATOR_PUBKEY

echo -e "\n${RED}Please carefully check the entered info below. Write YES and hit enter if all looks good. Otherwise, write NO and run the script again.${NC}\n"
echo -e "${GREEN}Delegator public key: $DELEGATOR_PUBKEY ${NC}"
echo -e "${GREEN}Validator public key: $VALIDATOR_PUBKEY ${NC}"
echo -e "${GREEN}Amount to be undelegated: $DELEGATE_AMOUNT ${NC}"
echo -e "${GREEN}Amount to be undelegated in motes: $DELEGATE_MOTES ${NC}"

echo -e "${RED}\nI confirm that all the info above is correct (Type YES or NO and hit enter):${NC}"
read ANSWER

if [[ $ANSWER == "YES" ]]
then
  casper-client put-deploy --chain-name casper --node-address http://185.198.72.171:7777 -k $HOME/privkey.pem --session-path "$HOME/casper-node/target/wasm32-unknown-unknown/release/undelegate.wasm" --payment-amount 500000000 --session-arg "validator:public_key='$VALIDATOR_PUBKEY'" --session-arg="amount:u512='$DELEGATE_MOTES'" --session-arg "delegator:public_key='$DELEGATOR_PUBKEY'"
else
  echo "Please run the script again with correct info."
fi
