#!/bin/bash


#Author: Kwabla Amewuga Attibu
#Date Created: August 20, 2023. 
#Date Modified: 


echo "Welcome to RBC, Kofi!"
echo "To activate your card and set up a PIN, please follow these instructions:"
echo "1. Insert your card into the cash machine."
echo "2. When prompted, enter the last four digits of your card number: XXXX XXXX XXXX 4412"
read -p "Enter the last four digits of your card number: " card_input


card_digits=$(echo "$card_input" | grep -oE '[0-9]{4}$')


if [ "$card_digits" != "4412" ]; then
    echo "Invalid card number. Please try again."
    exit 1
fi



echo "3. Enter your CVC when prompted: "
read -sp "Enter your CVC: " cvc 
echo ""



if [ "$cvc" != "113" ]; then
    echo "Invalid CVC. Please try again."
    exit 1
fi



echo "4. Enter your desired PIN (4 digits):"
read -sp "Enter your PIN: " pin
echo ""



echo "5. Re-enter your PIN for confirmation:"
read -sp "Re-enter your PIN: " confirm_pin
echo ""



if [ "$pin" != "$confirm_pin" ]; then
    echo "PINs do not match. Please try again."
    exit 1
fi



echo "Thank you, Kofi! Your card is now activated and your PIN is set."
echo "Remember to keep your PIN secure and do not share it with anyone."
