#!/bin/bash

# Author: Dominic Quansah
# Date Created: 30/08/23
# Description: This Scripts directs Kofi in his Transaction Simulation at Udemy.com


Postcode="T4E5J1"
Expiration_date="05/06"
CVC="113"
PIN="1957"
Card_number="4412"


#Welcome Message
echo "Kofi, Welcome to Udemy.com"
sleep 2s

read -p "Enter last 4 digits of card number (0215 4897 6560 ****): " entered_card_number

# check if entered last four digits number is correct
if [[ " $entered_card_number" != "$card_number" ]]; then
	echo "invalid card number ending, Transaction declined."
	echo "Your card has been blocked, kindly contact RBC for assistance."
	exit 1
fi

read -p "Enter your postcode: " Entered_postcode

if [[ "$Entered_postcode" != "$Postcode" ]]; then
	echo "Invalid Postcode, Transaction Declined."
	exit 1
fi

read -p "Enter your PIN: " Entered_PIN

if [[ "$Entered_pin" != "PIN" ]]; then
	echo "Invalid PIN, Transaction Declined."
	exit 1
fi

read -p "Enter your CVC: " Entered_CVC

if [[ "Entered_CVC" != "CVC" ]]; then
	echo "Invalid CVC, Transaction Declined."
	exit 1
fi

# Successful transaction message
echo "Transaction successful! Enjoy your purchase at Udemy.com."
