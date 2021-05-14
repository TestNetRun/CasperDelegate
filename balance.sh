PUBLIC_KEY_HEX=$1
STATE_ROOT_HASH=$(casper-client get-state-root-hash --node-address http://185.198.72.171:7777 | jq -r '.result | .state_root_hash')
PURSE_UREF=$(casper-client query-state --node-address http://185.198.72.171:7777 --key "$PUBLIC_KEY_HEX" --state-root-hash "$STATE_ROOT_HASH" | jq -r '.result | .stored_value | .Account | .main_purse')
BALANCE=$( expr $(casper-client get-balance --node-address http://185.198.72.171:7777 --purse-uref "$PURSE_UREF" --state-root-hash "$STATE_ROOT_HASH" | jq -r '.result | .balance_value') / 1000000000)

WHITE='\033[0;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "\nAccount number: ${GREEN}$PUBLIC_KEY_HEX ${NC}"
echo -e "Account balance: ${GREEN}$BALANCE ${NC} CSPR\n"
