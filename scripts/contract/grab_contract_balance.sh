#!/bin/bash

# Directory of project
DIR='../..'

# Timestamp for creating json files
TS=$(date +%s)

# API Key
API='RJFP4SBR5DWV4PN59838WPEQ2PZCMG8E42'

# BakedBeans.io
CONTRACT='0xe2d26507981a4daaaa8040bae1846c14e0fb56bf'

# BakedBeans.io BNB Balance
curl -s "https://api.bscscan.com/api?module=account&action=balance&address=$CONTRACT&apikey=$API" > $DIR/json/contract/bakedbeans.io.$TS.balance.json

# LuckyCat.money
CONTRACT='0xb50e74A6b82F59c4058b5D798E3D9C9D9B8c6e16'

# LuckyCat.money BNB Balance
curl -s "https://api.bscscan.com/api?module=account&action=balance&address=$CONTRACT&apikey=$API" > $DIR/json/contract/bnb.luckycat.money.$TS.balance.json

# Drip Garden
CONTRACT='0x685BFDd3C2937744c13d7De0821c83191E3027FF'
TOKEN='0xa0feB3c81A36E885B6608DF7f0ff69dB97491b58'
curl -s "https://api.bscscan.com/api?module=account&action=tokenbalance&contractaddress=$TOKEN&address=$CONTRACT&tag=latest&apikey=$API" > $DIR/json/contract/drip.garden.$TS.balance.json

# Drip Faucet
CONTRACT='0xFFE811714ab35360b67eE195acE7C10D93f89D8C'
TOKEN='0x20f663CEa80FaCE82ACDFA3aAE6862d246cE0333'
curl -s "https://api.bscscan.com/api?module=account&action=tokenbalance&contractaddress=$TOKEN&address=$CONTRACT&tag=latest&apikey=$API" > $DIR/json/contract/drip.faucet.$TS.balance.json

# Drip Faucet Vault
CONTRACT='0xbff8a1f9b5165b787a00659216d7313354d25472'
TOKEN='0x20f663CEa80FaCE82ACDFA3aAE6862d246cE0333'
curl -s "https://api.bscscan.com/api?module=account&action=tokenbalance&contractaddress=$TOKEN&address=$CONTRACT&tag=latest&apikey=$API" > $DIR/json/contract/drip.faucet.vault.$TS.balance.json
