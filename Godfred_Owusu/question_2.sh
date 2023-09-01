#!/bin/bash

# Welcome message
echo "Welcome, Kofi Ezedike! Thank you for choosing  Udemy."
sleep 3s
# Initialize variables
correct_card_number_prefix="123456789012"
correct_card_number_suffix="4412"
correct_cvc="113"
correct_pin="1957"
correct_postcode="T4E5J1"

# Prompt for card number
read -p "Enter the 16-digit card number: " card_number
echo ""

# Check if card number is correct
if [[ "$card_number" == "$correct_card_number_prefix"*"$correct_card_number_suffix" ]]; then
    # Prompt for CVC
    read -sp "Enter the CVC: " cvc
    echo ""
    sleep 3s

    # Prompt for postcode
    read -p "Enter your postcode: " postcode
    echo ""
    sleep 3s

    # Verify CVC and postcode
    if [ "$cvc" == "$correct_cvc" ] && [ "$postcode" == "$correct_postcode" ]; then
        echo "Transaction successful!"
    else
        echo "Transaction declined. Your card has been blocked."
    fi
else
    echo "Invalid card number. Transaction declined."
fi


