#!/bin/bash

#Athor: Godred Owusu
#Date Created: August 22, 2023

#Question1

#Welcome message
echo "Welcome to RBC, we are glad to have you!"
sleep 3s
echo "Please insert your credit card to start"
sleep 3s

# Initialize variables
correct_card_number="4412"
correct_cvc="113"

# Loop for card activation
while true; do
    # Prompt for card number and CVC
    read -p "Enter the last four digits of your card number: " card_number
    sleep 3s
    read -s -p "Enter your CVC: " cvc
    echo ""
    sleep 3s

    # Check if card number and CVC are correct
    if [ "$card_number" == "$correct_card_number" ] && [ "$cvc" == "$correct_cvc" ]; then
        echo  "Card activation was successful, Thank you for choosing RBC Kofi"
       	sleep 3s
       	echo "Kindly set up your new PIN."

        # Prompt for PIN
        while true; do
            read -sp "Set up your new PIN: " pin1
            sleep 3s
            read -sp "Kindly re-enter your new PIN to confirm: " pin2
            echo ""

            if [ "$pin1" == "$pin2" ]; then
                echo "PIN was successfully set."
                break
            else
                echo "PINs do not match. Please try again."
            fi
        done

echo "Thank you, Kofi. Your credit card is now activated with the PIN you've set."
echo "Thank you for choosing RBC, we are glad to have you"
break
else
        echo "Card activation failed. Incorrect card number or CVC, Please try again."
 fi
 done

