#!/bin/bash

#Author: David Maabobra Aanye
#Date created: 01/09/2023
#Subject: SCRIPT TO NOTE CREDIT LIMIT WHILE USING ATM CARD

credit_limit=2000

# Welcome message
echo "Welcome to RBC,Please insert your card"
sleep 4s

#Prompting user about credit limit
echo "Your credit limit is" $credit_limit
sleep 3s

#Prompt user to enter transaction amount
read -p "Enter your transaction amount: " amount
echo $amount

echo "Wait, ......"

sleep 4s

#Authenticaton of transaction amount is allowed

if [ "$amount" -le "$credit_limit" ]; then
	        echo "transaction approved"

		
         	else
		        echo "Alert! amount exceeds credit limit,transaction declined"
fi
