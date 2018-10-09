#!/usr/bin/env bash
set -o errexit

echo "=== EOS keys ==="

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

echo "=== Generating: Owner Key ==="
# Generate Ower key
cleos create key --to-console
echo "=== Generating:  Active Key ==="
# Generate Active key
cleos create key --to-console
