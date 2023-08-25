#!/bin/bash


#Author: Kwabla Amewuga Attibu
#Date Created: 
#Date Modified:



# Kofi's approved credit limit
credit_limit=2000

echo "Welcome, Kofi! Please follow these steps to complete a transaction:"

echo "1. Enter the transaction amount:"
read transaction_amount



# Verify transaction against credit limit
if [ "$transaction_amount" -le "$credit_limit" ]; then
    echo "Transaction approved! You can proceed with your purchase of $transaction_amount."
else
    echo "Transaction declined. The transaction amount of $transaction_amount exceeds your credit limit of $credit_limit."
fi

