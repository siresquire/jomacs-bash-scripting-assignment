#! /bin/bash
# Author: Ernest Bruce
# Created on:20/08/2023
# Modified on:
# Description:script that directs Kofi on
# how to use his card for the first CNP transaction at Udemy.com


postcode="T4E5J1"
cardnum="4412"
cvc="113"


read -p "Enter last 4 digit of card number (2234 5678 7878 ****): " entered_cardnum

# Check if the entered card number is correct
if [ "$entered_cardnum" != "$cardnum" ]; then
    echo "Transaction declined. Your card has been blocked."
    exit 1
fi

read -p "Enter your postcode: " entered_postcode 

# Check if the entered postcode is correct
if [ "$entered_postcode" != "$postcode" ]; then
    echo "Transaction declined. Your card has been blocked."
    exit 1
fi


read -p "Enter your CVC: " entered_cvc

# Check if the entered CVC is correct
if [ "$entered_cvc" != "$cvc" ]; then
    echo "Transaction declined. Your card has been blocked."
    exit 1
fi

# Successful transaction message
echo "Transaction successful! Enjoy your purchase at Udemy.com."



