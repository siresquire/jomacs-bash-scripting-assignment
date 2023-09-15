#!/bin/bash

echo "Welcome to Udemy.com, Kofi!"
echo "To make your first CNP transaction, please follow these prompts:"
sleep 2

echo "On this page, select the option to pay by card."
sleep 2

echo "Enter your 16-digit card number."
read -p "   Card Number: " card_number

# Extract the last 4 digits of the card number
last_digits=${card_number: -4}

# Check if the last 4 digits match the required ending (4412)
if [ "$last_digits" != "4412" ]; then
    echo "   Transaction declined. Your card has been blocked."
    sleep 2
    echo "   Please contact customer support for assistance."
    exit 1

fi

echo "3. Enter your postcode."
read -p "   Postcode: " postcode

# Check if the postcode matches the required value (T4E5J1)
if [ "$postcode" != "T4E5J1" ]; then
    echo "   Transaction declined. Your card has been blocked."
    sleep 2
    echo "   Please contact customer support for assistance."
    exit 1

fi

echo "4. Enter your CVC."
read -sp "   CVC: " cvc
echo

# Check if the CVC matches the required value (113)
if [ "$cvc" != "113" ]; then
    echo "   Transaction declined. Your card has been blocked."
    echo "   Please contact customer support for assistance."
    exit 1
fi

echo " Review your transaction details and confirm the payment."
sleep 2

echo "press ENTER"
sleep 2
echo "Congratulations! Your CNP transaction has been successful."






















































