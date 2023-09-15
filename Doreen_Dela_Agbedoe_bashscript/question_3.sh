#!/bin/bash
#Question_3
#Author: Doreen Dela Agbedoe
#Created: 23rd August 2023
#Description: Kofi's credit limit approval script


# Pleasantry
echo "Welcome, Kofi!"

# Variable for approved credit limit in USD
approved_credit_limit=2000

# Function to perform transaction
perform_transaction() {
    read -p "Enter the transaction amount: " transaction_amount

    if [ "$transaction_amount" -le "$approved_credit_limit" ]; then
        echo "Transaction approved. Thank you for your purchase!"
    else
        echo "Transaction declined. Transaction amount exceeds your credit limit."
    fi
}
perform_transaction




