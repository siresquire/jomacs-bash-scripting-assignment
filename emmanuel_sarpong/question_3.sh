#!/bin/bash

credit_limit=2000

echo "Welcome, Kofi!"
echo "Your approved credit limit is $credit_limit."

echo "Please enter the transaction amount:"
read transaction_amount

if [ $transaction_amount -le $credit_limit ]; then
    echo "Transaction approved. You can proceed with the payment."
else
    echo "Transaction declined. The transaction amount exceeds your credit limit."
fi








































