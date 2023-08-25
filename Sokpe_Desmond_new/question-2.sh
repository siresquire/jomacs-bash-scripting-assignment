#!/bin/bash

# Author: Sokpe Desmond
# Created on: 22/08/23

# Simulated card details
card_number="123456XXXXXXXX4412"
expiration_date="05/26"
cvc="113"
pin="1957"
postcode="T4E5J1"

# Simulate CNP transaction process
echo "Welcome to Udemy.com"
read -p "Please enter your 16-digit card number: " entered_card_number

if [[ "$entered_card_number" != "$card_number" ]]; then
		    echo "Transaction declined: Invalid card number ending."
		    	        exit 1
fi

read -p "Please enter your card's expiration date (MM/YY): " entered_expiration_date

if [[ "$entered_expiration_date" != "$expiration_date" ]]; then
		    echo "Transaction declined: Card expired."
		    	        exit 1
fi

read -p "Please enter your CVC: " entered_cvc

if [[ "$entered_cvc" != "$cvc" ]]; then
		    echo "Transaction declined: Invalid CVC."
		    	        exit 1
fi

read -p "Please enter your PIN: " entered_pin

if [[ "$entered_pin" != "$pin" ]]; then
		    echo "Transaction declined: Invalid PIN."
		    	        exit 1
fi

read -p "Please enter your postcode: " entered_postcode

if [[ "$entered_postcode" != "$postcode" ]]; then
		    echo "Transaction declined: Incorrect postcode."
		    	        exit 1
fi

echo "Transaction successful. Enjoy your purchase!"
