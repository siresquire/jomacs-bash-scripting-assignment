
#!/bin/bash

# Author : Bright
# Date Created: 15 August
# Date Modified:15 August 2023


pin="$1957"
postcode="$T4E5J1"
cvc="$113"
sixteen_digit_number="$9040012311774412"
card_last_four="4412"
# welcome Message
echo "Kofi!, welcome to your first online  transaction, you,re about to make a purchase from udemy.com."

# Prompt to verify card and cvs number

read -p "Please enter the 16 digits of your card number: " sixteen_digit_number
read -sp "Enter your 4-digit PIN: " pin
echo

# Check if PIN matches
if [ "$pin" != "1957" ]; then
    echo "Incorrect PIN. Transaction declined. Your card has been blocked."
    exit
fi

read -p "Enter your postcode: " postcode
read -sp "Enter the CVC on the back of your card: " cvc

# Check if postcode and CVC match
if [ "$postcode" == "T4E5J1" ] && [ "$cvc" == "$cvc" ]; then
    	echo "Transaction successful! Thank you for your purchase on Udemy.com."
else
    echo "Transaction declined. Your card has been blocked. Please contact customer support."
fi

