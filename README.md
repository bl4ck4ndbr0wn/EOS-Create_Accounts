# EOS - Create Accounts

Creating EOS account requires staking EOS for CPU/RAM/NET.

you will need One or Two different valid EOS Public/Private Keypair(s)

In every case, it will be a two step process:

1. Generating an EOS Public / Private Key
2. Assigning the EOS Public key(s) to an EOS account.
   Note: Accounts must be 12 characters, numbers and letters. You can search availability of names by typing the name into a block explorer like eosflare.io. Alternative premium names are coming soon with the ongoing EOS name auction.

What does an EOS keypair look like?
An EOS keypair will look something like this:

******\*\*\*******Do not use this key! For example purposes only!******\*\*\*******

EOS PUBLIC KEY: EOS7LVHJBJNWdZG8bXcNZQZRn5Riufn6KpeVDSK337Tbj7vCwEWAJ

Private Key: 5KNuHZJDNACPQFHZ6EkpfpiqypCUyLczbnnkCdF5bGd2X3tpBfk
******\*\*\*******Do not use this key! For example purposes only!******\*\*\*******

They can be generated with the following tools: _ EOSKEY (offline key generator, easy to use, recommended for maximum security) _ Scatter (Chrome extension, recommended for daily use) _ Offline using official EOSIO code _ Cleos (Official wallet by Block.one but command line tool, only for advanced users) \* Simple javascript generator (easiest to use but be careful)

Once the keypair is generated, the most important part is you are responsible for backing up your private key and Do not share your EOS PRIVATE KEY WITH ANYONE!

You will use the EOS PUBLIC key you generated during the account signup process to set the EOS Active key and the EOS Owner key.

## How to use

```
$ chmod +x create-account.sh   // Makes file executable.

$ ./create-account.sh <USERNAME> <EOS PUBLIC KEY>
```
