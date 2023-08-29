#!/bin/bash


#Author :Joseph Sam

 
echo "Welcome to Udemy.com, Please follow the prompt for a smooth CNP transaction." 


read -p "Enter the first part of your 16-digit card number (ending with XXXX4412): " card_1


if [[ $card_1 == *4412 ]]; then
    
    read -p "Enter your postcode: " postcode

    
    read -sp "Enter your CVC: " cvc
    echo

    
    read -sp "Enter your PIN: " pin
    echo

   
    if [[ $postcode == "T4E5J1" && $cvc == "113" && $pin == "1957" ]]; then
        echo "Transaction successful! Enjoy your course on Udemy.com, Kofi."
    else
        echo "Your transaction has been declined. Incorrect postcode, CVC or PIN. Your card has been blocked."
	echo "Card Fraud Alert, please contact your bank immediately."
    fi
else
    echo "Error. Please make sure the last 4 digits ends with 4412."
fi
 
