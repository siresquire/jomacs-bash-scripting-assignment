#!/bin/bash

# CNP TRANSACTION AT UDEMY.COM

echo "Welcome back, Kofi! Let's make your first CNP transaction at Udemy.com."

read -p "Please enter the first part of your 16-digit card number (ending in 4412): " card_prefix
read -s -p "Enter your 3-digit CVC code: " entered_cvc
read -p "Enter your postcode: " entered_postcode

# Assuming Kofi's card details
correct_card_prefix="123456789012"  # Replace with the actual first part of the card number
correct_cvc="113"
correct_postcode="T4E5J1"

if [[ $card_prefix == "$correct_card_prefix" && $entered_cvc == "$correct_cvc" && $entered_postcode == "$correct_postcode" ]]; then
    echo "Transaction successful! Enjoy your Udemy purchase."
else
    echo "Transaction declined. Your card has been blocked for security reasons."
    echo "Please contact RBC customer support for assistance."
fi

# Adding a delay for a more realistic experience
sleep 3s

echo "Thank you for choosing RBC. Have a great day!"

