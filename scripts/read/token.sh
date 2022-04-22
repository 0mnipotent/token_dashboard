#!/bin/bash

DIR='../..'

FILE=$(ls -t $DIR/json/token/PIGS.* | head -1)
updated_at=$(jq '.updated_at' $FILE | sed 's/"//g')
name=$(jq '.data.name' $FILE | sed 's/"//g')
symbol=$(jq '.data.symbol' $FILE | sed 's/"//g')
price=$(jq '.data.price' $FILE | sed 's/"//g')
r_price=$(printf "%0.2f\n" $price)
price_BNB=$(jq '.data.price_BNB' $FILE | sed 's/"//g')
r_price_BNB=$(printf "%0.4f\n" $price_BNB)

time_convert=$(date -r $updated_at '+%m/%d/%Y:%H:%M:%S')

echo "Updated: $time_convert
Token: $name
Symbol: $symbol
Price (USD): $r_price
Price (BNB): $r_price_BNB"


