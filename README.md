# p2p-install

## 1. Install the P2P binaries and library
1. Clone the repository
   
```
git clone https://github.com/decentlogic/p2p-install.git
```

2. Enter the clone repository
```
cd p2p-install
```

3. Change the permission
```
chmod +x install.sh
```

4. Run the script
```
./install.sh
```
## 2. Install the Solana CLI 
For more info about solana installation refer: https://solana.com/developers/guides/getstarted/setup-local-development
```
sh -c "$(curl -sSfL https://release.solana.com/beta/install)"
```
You can replace stable with the release tag matching the software version of your desired release (i.e. v1.18.1), or use one of the three symbolic channel names: stable, beta, or edge.

To check if your installation was successful, check the Solana CLI version:
```
solana --version
```

## 3. Setup a localhost blockchain cluster
The Solana CLI comes with the test validator built-in. This command line tool will allow you to run a full blockchain cluster on your machine:
```
solana-test-validator
```
Run the Solana test validator in a new/separate terminal window that will remain open. This command line program must remain running for your localhost cluster to remain online and ready to process transactions and requests (like deploying programs).

Configure your Solana CLI to use your localhost validator for all your future terminal commands (url is generated after running solana-test-validator command)
```
solana config set --url http://127.0.0.1:8899
```
At any time, you can view your current Solana CLI configuration settings:

```
solana config get
```

## 4. Create a file system wallet

To deploy a program with Solana CLI, you will need a Solana wallet with SOL tokens to pay for the cost of transactions and data storage on the blockchain.

Let's create a simple file system wallet to use during local development:

```
solana-keygen new
```

By default, the solana-keygen command will create a new file system wallet located at ~/.config/solana/id.json. You can manually specify the output file location using the --outfile /path option.

### Set your new wallet as the default
```
solana config set -k ~/.config/solana/id.json
```
## 5. Airdrop SOL tokens to your wallet
```
solana airdrop 2
```
For more info about setting up solana and other dependencies, refer: https://solana.com/developers/guides/getstarted/setup-local-development
### solana balance
```
solana balance
```

## 6. Open another terminal and run, to deploy the p2p program to local block chain
```
solana program deploy ~/.p2p/program/p2p_pg.so
```

### Once the deploy is successful, execute the p2p cli
```
p2p --help
```
