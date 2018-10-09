#!/usr/bin/env bash
set -o errexit

# make sure Cleos is installed
if [ ! -x "$(command -v cleos)" ]; then
    echo ""
    echo -e "\033[0;31m[Error with Exception]\033[0m"
    echo "Please make sure cleos are installed"
    echo ""
    echo "Install cleos: https://developers.eos.io/eosio-nodeos/docs/learn-about-wallets-keys-and-accounts-with-cleos"
    echo ""
    exit
fi

echo "=== Creating EOS blockchain accounts ==="

ACCOUNTNAME=$1
OWNER_KEY=$2
ACTIVE_KEY=$3

CREATOR=$4
API=$5


# $1 New EOS Account Name
# $2 First generated public key for the account. Owner key
# $3 Second generated public key. Active key
# $4 Api url for an active block producer.


echo "=== Setup Account: Create new Account==="
# Create new account
cleos -u $API system newaccount -X 1000 \
  --stake-net "0.05 EOS" --stake-cpu "0.15 EOS" --buy-ram-kbytes 8 --transfer \
  $CREATOR $ACCOUNTNAME $PUBLIC_KEY $OWNER_KEY $ACTIVE_KEY \

echo "=== Setup Account: Send EOS to new Account ==="
# Transfer EOS to new Account
cleos -u $API transfer $CREATOR $ACCOUNTNAME "0.1 EOS" "Thanks for joining the EOS Nairobi Community."

echo "=== Setup Account: Check New Account Balance. ==="
# Check the balance
cleos -u $API get currency balance eosio.token $ACCOUNTNAME
