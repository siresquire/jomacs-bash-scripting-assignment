#!/bin/bash

# Author: Dominic Quansah
# Date Created: 30/08/23
# Description: This Scripts approves any transaction less than  or equal to kofi's credit limits


Credit_limit=2000

# Transaction input message
read -p "Please Enter your transaction amount: " Entered_transaction_amount

# Check if the entered transaction amount is within the credit limit
if [ "$Entered_transaction_amount" -le "$credit_limit" ]; then
	echo "transaction approved successfully."
elif
	[ "$Entered_transaction_amount" -gt "$credit_limit" ]; then
	echo "Transaction declined: Amount above credit limit."
else
	echo "Sorry Kofi,Your Transaction was declined.Please contact customer care."
fi

