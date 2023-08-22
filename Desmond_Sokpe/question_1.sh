#!/bin/bash

# Welcome message
echo "Welcome to RBC, Kofi Ezedike!"

# Prompt to insert card
echo "Please insert your card to start."

#i Wait for user to press Enter
read

# Clear the screen
clear

# Prompt for card number
echo "To activate your card, we'll need some information."
read -p "Please enter the last four digits of your card number: " card_last_four

# Prompt for CVC
read -sp "Please enter your CVC: " cvc
echo

# Prompt for expiration date
read -p "Please enter your card's expiration date (MM/YY): " expiration_date

# Prompt for setting up a PIN
echo "Thank you, Kofi. Let's set up your PIN."
read -sp "Please enter a 4-digit PIN: " pin1
echo
read -sp "Please confirm your 4-digit PIN: " pin2
echo

# Verify PINs match
if [ "$pin1" = "$pin2" ]; then
	    echo "PIN successfully set up. Your card is now activated."
    else
	        echo "PINs do not match. Please start the activation process again."
fi

