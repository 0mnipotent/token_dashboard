#!/bin/bash

DIR='/root/token_dashboard'

if [ -z "$1" ];then
	echo "Enter wallet address"
	read wallet_addr
else
	wallet_addr=$1
fi

size=${#wallet_addr}
if [ "$size" == 42 ];then
	if [ "${wallet_addr:0:2}" == "0x" ];then
		chk=$(grep -i "$wallet_addr" $DIR/address-wallet.txt|wc -l)
		if [ "$chk" == 0 ];then
			echo "$wallet_addr" >> $DIR/address-wallet.txt
			echo "$wallet_addr successfully added to address-wallet.txt"
		else
			echo "ERR: Wallet already added"
		fi
	else
		echo "ERR: Wallet address should start with 0x"
	fi
else
	echo "ERR: Wallet address should be 42 characters long"
fi
