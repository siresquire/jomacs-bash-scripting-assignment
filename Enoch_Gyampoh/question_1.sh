#!/bin/bash

# Author: Enoch Gyampoh
# Date Created: 24/Aug/2023
# Description: Bash script to activate card and set a pin

card_num=4412
CVC=113

# Display welcome message
echo "Welcome to RBC, Kofi Ezedike!, our customer's satisfaction is our priority"
echo "Please insert your card to activate your PIN"
sleep 2s


# Ask for card number and cvc
read -p "Enter the last four digit of your card number:" card_last_four
sleep 2

# Prompt for CVC
read -sp "Enter your CVC: " cvc
echo

echo "Please wait ..."
sleep 2


if [[ $card_last_four == $card_num && $cvc == $CVC ]];
then
	# Prompt for PIN
	read -sp "Enter your PIN: " pin1
	echo

	# Prompt second PIN
	read -sp "Re-enter PIN: " pin2
	echo
	sleep 2
else
	echo "Card number and CVC doesn't match!"
	echo "Please try again"
	exit 1
fi


# Conditional statement
if [ "$pin1" == "$pin2" ]; then
    echo "Thank you Kofi, your card has been activated."
else
    echo "PIN does not match, please start activation process again"
fi

