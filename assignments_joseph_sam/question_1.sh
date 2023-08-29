#!/bin/bash


#Author : Bronzy
#Date Created : 
#Date modified :

echo "Welcome to RBC.We are glad to have you here."
echo "Please insert your card."
sleep 2s

read -p "enter the last four digits of your card: " card_last_four_digits
echo
sleep 3s

read -p "enter your cvc: " cvc
sleep 2s

echo "You are about to set up a pin and you won't see your input."
sleep 2s

pin_verification=0
while [ "$pin_verification" -eq 0 ]; do
	echo "Please input a 4 digit PIN."
	read -s pin1
	echo "Please re-input your PIN."
	read -s pin2
	if [ "$pin1" = "$pin2" ]; then
		echo "PIN set up successfully."
		pin_verification=1
	else 

		echo "PIN verification failed.Please try again."
	fi
done
 echo "Congratulations, your card has been  activated successfully."
