#!/bin/bash

# Kofi's approved credit limit
credit_limit=2000

# Input transaction amount
read -p "Enter transaction amount: " transaction_amount

# Check if the transaction amount is within the credit limit
if [ "$transaction_amount" -le "$credit_limit" ]; then
	    echo "Transaction approved: Amount is within the credit limit."
    else
	        echo "Transaction declined: Amount is above the credit limit."
fi

