#!/bin/bash

# Author: Dominic Quansah
# Date Created: 30/08/23
# Description: This Scripts is to help Kofi Activate his Card


# Welcome Message
echo "Welcome to Royal Bank of Canada, Kofi Ezedike!"
sleep 3s

# Prompt User to insert Card
echo "Please insert your card to start."

# Prompt for card number
echo "to activate your card we'll need your last four digits."
read -p "Please enter the last four digits of your card number: " card_last_four

sleep 3s

# Prompt for CVC
read -sp "Enter your CVC: " cvc
echo

sleep 2s

# Prompt for Card expiration date
read -p "Please enter your card's expiration date (MM/YY): " expiration_date

sleep 2s

# Prompt for setting up a PIN
echo "Kofi, Kindly set up your new PIN."
read -sp "Enter a 4-digit PIN: " PIN1

# Prompt for Verification of PIN
read -sp "Re-enter your pin for Verification: "
echo

sleep 2s


# Verify if both PIN match
if [ "$PIN1" == "$PIN2" ];then
      echo "kofi, Your PIN has been set and you've successfully activated your card."
else
	echo "PINS do not match. Please start the activation process again."
fi
