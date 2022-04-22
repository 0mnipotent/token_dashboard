#!/bin/bash

DIR='../..'

if [ -z "$1" ];then
	echo "Enter contract address"
	read contract_addr
else
	contract_addr=$1
fi

size=${#contract_addr}
if [ "$size" == 42 ];then
	if [ "${contract_addr:0:2}" == "0x" ];then
		chk=$(grep -i "$contract_addr" $DIR/address-contract.txt|wc -l)
		if [ "$chk" == 0 ];then
			echo "$contract_addr" >> $DIR/address-contract.txt
			echo "$contract_addr successfully added to address-contract.txt"
		else
			echo "ERR: Contract already added"
		fi
	else
		echo "ERR: Contract address should start with 0x"
	fi
else
	echo "ERR: Contract address should be 42 characters long"
fi
