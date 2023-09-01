#!/bin/bash

# Athour: Bright
# Date of creation: 20th AUG 2023
# Date Modified:  20th AUG 2023

# QUESTION 1


cvc="$113"
card_number="$4412"


# Welcome message
echo "Welcome to RBC, Kofi! You're about to experince our services for the first time."

# Prompt to insert the card
echo "Please insert your credit card to begin the activation process."

# Read the card number
read -p "Enter the last four digits of your card number: " card_number

# Read the CVC
read -sp "Enter the CVC on the back of your card: " cvc

read -sp "Re-enter the CVC on the back of your card: " cv

# Check if card number and CVC match
if [[ "$card_number" == "4412" && "$cvc" == "113" ]]; then
    echo "Verification successful."


        # Thank you message

	echo "Thank you for choosing RBC!, if wants  to make other transcactions you may press (procced), otherwise press (No) to exit"

    else
        echo "PINs do not match. Please check and try again."
    fi


