Token Dashboard

Graphs: (NOT STARTED)
	1. Price/BUSD
	2. Price/BNB
	3. Total Supply / Circulating Supply
	4. Contract Balance
	5. Wallet balances of listed tokens

WebUI Backend: (NOT STARTED)
	1. Add token address
	2. Add wallet address

BASH Backend: (UNDER CONSTRUCTION)
	1. Add token address
	2. Add wallet address

Project File structure:
 /json/token/$token.$ts.$addr.json
	Stored data for Graph 1, Graph 2
 /json/token/$token.totalsupply.$ts.json
	Stored data for Graph 3
 /json/contract/$contract.balance.$ts.json
	Stored data for Graph 4
 /json/address/$address.$ts.json
	Stored data for Graph 5
 /address-wallet.txt
	Stores wallet addresses
 /address-contract.txt
	Stores contract addresses
 /address-token.txt
	Stores token addresses
 /forms/addtoken.php
	Web UI form for adding token address
 /forms/addwallet.php
	Web UI form for adding wallet address
 /forms/addcontract.php
	Web UI form for adding contract address
 /scripts/token/grab_token.sh
	Grab token data for Graph 1
 /scripts/token/grab_supply.sh
	Grab token data for Graph 2
 /scripts/contract/grab_balance.sh
	Grab balance of wallets using listed tokens
 /scripts/address/grab_address.sh

 /scripts/add/wallet.sh
	Add to address-wallet.txt
 /scripts/add/contract.sh
	Add to address-contract.txt
 /scripts/add/token.sh
	Add to address-token.txt
