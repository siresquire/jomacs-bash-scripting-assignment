#!/bin/bash

# Welcome message
echo "Lets proceed your transaction."
leep 3s
# Approved credit limit
credit_limit=2000

# Prompt for transaction amount
read -p "Enter the transaction amount: " transaction_amount
echo ""
sleep 3s

# Check if transaction is within credit limit
if [ "$transaction_amount" -le "$credit_limit" ]; then
    echo "Transaction approved. Enjor your package!"
else
    echo "Transaction declined. The transaction amount is above your credit limit."
fi

