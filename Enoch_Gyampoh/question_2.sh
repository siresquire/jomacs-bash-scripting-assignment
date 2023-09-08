#!/bin/bash

#1/bin/bash

# Author: Enoch
# Date Created: 24/Aug?2023
# Description: 

echo "Hello Kofi, welcome to your transaction at Udemy"

#Prompt for 16 digit card number
read -p "Enter your 16 digit card number ending in 4412: " card_prefix

if [[ $card_prefix == 4412 ]]; then

    #Prompt for postcode
    read -p "Enter your Postcode: " postcode

    #Prompt for CVC
    read -sp "Enter your CVC: " cvc
    echo
    
    #Prompt for PIN
    read -sp "Enter your PIN: " pin1
    echo
    
    echo "Transaction processing, please wait ..."
    sleep 2

    if [[ $postcode == T4E5J1 && $cvc == 113 && $pin1 == 1957 ]]; then

        echo "Transaction successfull"
    else
        echo "Transaction is declined!"
        echo "Your card is blocked"
    fi
else
    echo "Invalid card number!"
    echo "Please make sure the last four number ends with 4412"

fi

