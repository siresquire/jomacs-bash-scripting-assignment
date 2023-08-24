#!/bin/bash


#Author: Kwabla Amewuga Attibu
#Date Created: 20 August, 2023
#Date Modified: 



# Kofi's card information
card_number="4412"
pin="1957"
cvc="113"
postcode="T4E5J1"



echo "Welcome to your first CNP transaction at Udemy.com, Kofi!"
echo "Please follow these steps to complete your transaction:"

echo "1. Enter your the last 4-digit card number: $card_number"
read -sp "Enter your card number: " entered_card_number



# Verify card number
if [[ "$entered_card_number" != *4412 ]]; then
    echo "Invalid card number. Transaction declined."
    echo "Your card has been blocked. Please contact RBC for assistance."
    exit 1
fi



echo "2. Enter your PIN: (For security, your PIN will not be visible)"
read -sp "Enter your PIN: " entered_pin
echo ""



# Verify PIN
if [ "$entered_pin" != "$pin" ]; then
    echo "Incorrect PIN. Transaction declined."
    echo "Your card has been blocked. Please contact RBC for assistance."
    exit 1
fi



echo "3. Enter your postcode in the next line: "
read -sp "Enter your postcode: " entered_postcode



# Verify postcode
if [ "$entered_postcode" != "$postcode" ]; then
    echo "Invalid postcode. Transaction declined."
    echo "Your card has been blocked. Please contact RBC for assistance."
    exit 1
fi



echo "4. Enter your CVC in the next line: "
read -sp "Enter your CVC: " entered_cvc



# Verify CVC
if [ "$entered_cvc" != "$cvc" ]; then
    echo "Invalid CVC. Transaction declined."
    echo "Your card has been blocked. Please contact RBC for assistance."
    exit 1
fi

echo "Transaction successful! Thank you for shopping at Udemy.com, Kofi."

