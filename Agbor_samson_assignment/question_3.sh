#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:29/8/2023
# Date Modified:
# Description:A script that automatically approves any transaction less than or equal to Kofi's credit limit.

# Kofi's approved credit limit
credit_limit=2000

# Welcome message
echo "Welcome to RBC, Kofi! Let's process your transactions."
sleep 4s

# Prompt Kofi to enter transaction amount
 while true; do
     read -p "Enter the transaction amount: " transaction_amount
    
    # Check if the input is a valid number
    if ! [[ "$transaction_amount" =~ ^[0-9]+$ ]]; then
	    echo "Invalid input. Please enter a valid transaction amount."
	    continue
    fi 

    # Compare the transaction amount with Kofi's credit limit
    if [ "$transaction_amount" -le "$credit_limit" ]; then
	    echo "Transaction approved. You have sufficient credit for this transaction."
	   credit_limit=$((credit_limit - transaction_amount))
    else
	    echo "Transaction declined. Your credit limit has been exceeded."
    fi
    sleep 2s

    # Prompt Kofi if he want's to perform another transaction
     read -p "Do you want to perform another transaction? (yes/no): " choice
     if [ "$choice" != "yes" ]; then
	     break
     fi
done

# Farewell message to Kofi
echo "Thank you for using your RBC card, Kofi! Have a great day!"
                     
exit 0
