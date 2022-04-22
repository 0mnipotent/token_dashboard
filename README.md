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

``` /json/token/$token.$ts.$addr.json```
	Stored data for Graph 1, Graph 2
	<br>
`` /json/token/$token.totalsupply.$ts.json``
	Stored data for Graph 3
	<br>
`` /json/contract/$contract.balance.$ts.json``
	Stored data for Graph 4
	<br>
`` /json/address/$address.$ts.json``
	Stored data for Graph 5
	<br>
`` /address-wallet.txt``
	Stores wallet addresses
	<br>
`` /address-contract.txt``
	Stores contract addresses
	<br>
`` /address-token.txt``
	Stores token addresses
	<br>
`` /forms/addtoken.php``
	Web UI form for adding token address
	<br>
`` /forms/addwallet.php``
	Web UI form for adding wallet address
	<br>
`` /forms/addcontract.php``
	Web UI form for adding contract address
	<br>
`` /scripts/token/grab_token.sh``
	Grab token data for Graph 1
	<br>
`` /scripts/token/grab_supply.sh``
	Grab token data for Graph 2
	<br>
`` /scripts/contract/grab_balance.sh``
	Grab balance of wallets using listed tokens
	<br>
`` /scripts/address/grab_address.sh``
	<br>
`` /scripts/add/wallet.sh``
	Add to address-wallet.txt
	<br>
`` /scripts/add/contract.sh``
	Add to address-contract.txt
	<br>
`` /scripts/add/token.sh``
	Add to address-token.txt
	<br>
