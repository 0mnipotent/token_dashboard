#!/bin/bash

DIR='../..'

FILE=$(ls -t $DIR/json/contract/drip.faucet* | head -1)
DRIP_FAUCET=$(jq '.result' $FILE | sed 's/"//g' | rev | cut -c19- | rev)


FILE=$(ls -t $DIR/json/contract/drip.vault* | head -1)
DRIP_VAULT=$(jq '.result' $FILE | sed 's/"//g' | rev | cut -c19- | rev)



FILE=$(ls -t $DIR/json/contract/drip.garden* | head -1)
DRIP_GARDEN=$(jq '.result' $FILE | sed 's/"//g' | rev | cut -c19- | rev)

echo "Drip Faucet|$DRIP_FAUCET| Drip Tokens
Drip Vault|$DRIP_VAULT| Drip Tokens
Drip Garden|$DRIP_GARDEN| Drip/Busd LP" | column -ts'|'

