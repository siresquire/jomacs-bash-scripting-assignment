#!/bin/bash

# KOFI'S CREDIT TRANSACTION APPROVAL

# Kofi's approved credit limit
credit_limit=2000

echo "Welcome, Kofi! Let's process a transaction."

# Input transaction amount
read -p "Enter the transaction amount: " transaction_amount

# Check if transaction is within the credit limit
if (( transaction_amount <= credit_limit )); then
    echo "Transaction approved. Enjoy your purchase!"
else
    echo "Transaction declined. Your transaction amount exceeds your credit limit."
    echo "Please consider a lower amount or contact RBC customer support for assistance."
fi

# Adding a delay for a more realistic experience
sleep 2s

echo "Thank you for choosing RBC. Have a great day!"

