#!/bin/bash


#Author : Joseph Sam
#Date Created : August 21 2023
#Date Modified : August 21 2023




read -p "Enter amount; " amount

if [ $amount -le 2000 ]; then
	echo "Transaction approved."
elif [ $amount -gt 2000 ]; then
	echo "Transaction declined.Amount exceeds credit limit."

else 
	echo "Transaction declined."

fi
sleep 2s


echo "Sorry Kofi, your transaction was declined.Please contact customer care."
