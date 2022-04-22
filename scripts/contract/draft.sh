#!/bin/bash

DIR='/root/projects/token_dashboard'
TS=$(date +%s)

API='RJFP4SBR5DWV4PN59838WPEQ2PZCMG8E42'

# BakedBeans.io
CONTRACT='0xe2d26507981a4daaaa8040bae1846c14e0fb56bf'

#BNB Balance
curl -s "https://api.bscscan.com/api?module=account&action=balance&address=$CONTRACT&apikey=$API" > $DIR/json/contract/bakedbeans.io.$TS.balance.json
