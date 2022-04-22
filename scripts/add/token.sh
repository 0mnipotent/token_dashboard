#!/bin/bash

DIR='../..'

if [ -z "$1" ];then
	echo "Enter token address"
	read token_addr
else
	token_addr=$1
fi

size=${#token_addr}
if [ "$size" == 42 ];then
	if [ "${token_addr:0:2}" == "0x" ];then
		chk=$(grep -i "$token_addr" $DIR/address-token.txt|wc -l)
		if [ "$chk" == 0 ];then
			echo "$token_addr" >> $DIR/address-token.txt
			echo "$token_addr successfully added to address-token.txt"
		else
			echo "ERR: Token already added"
		fi
	else
		echo "ERR: Token address should start with 0x"
	fi
else
	echo "ERR: Token address should be 42 characters long"
fi
