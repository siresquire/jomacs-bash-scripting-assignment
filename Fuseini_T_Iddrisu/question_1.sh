#!/bin/bash

#Author: Fuseini Tia Iddrisu
#Date created: September 14,2023

Kofi=$name
Pin="2040"
echo "Welcome $name to RBC."
echo "please insert your card to begin."
read -p "Enter the last four digits of your card number: " card number
read -p "Enter your card's CVC: " cvc
echo "Now, $name let's setup your PIN." 
while true; do
	read -p "Enter your new PIN: "
	read -p "Confirm your new PIN: " pin confirm
	if [ "$pin" -eq "2040" ];
	then
		echo "PIN successfully set up."
	else
		echo "PINs do not match. Please try again."
	fi
done
echo "Your card has been successfully activated. Thank you for choosing RBC!
