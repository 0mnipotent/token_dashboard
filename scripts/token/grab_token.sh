#!/bin/bash

DIR='../..'

FILE="$DIR/address-token.txt"

while IFS= read -r line
do
 CHECK=$(curl -s "https://api.pancakeswap.info/api/v2/tokens/"$line | grep 'updated_at' | wc -l)
 if [ "$CHECK" -gt 0 ];then
  TOK=$(curl -s "https://api.pancakeswap.info/api/v2/tokens/"$line | grep 'updated_at')
  NAME=$(echo "$TOK" | jq '.data.name' | sed -e 's/"//g')
  TS=$(echo "$TOK" | jq '.updated_at')
  echo "$TOK" > $DIR"/json/token/"$NAME"."$TS"."$line".json"
 fi
done < "$FILE"
