

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# Question_3
# Description: Script that automatically approves transaction -le credit limit

# Define variables
approved_credit_limit=2000
card_number=XXXXXXX4412
cvc=113
expiry_date=05/26

# Pleasantry
echo "Welcome, Kofi!"

# Function to perform transaction
perform_transaction() {
    read -p "Enter the transaction amount: CAD" transaction_amount
    # Check if amount is less than or equal to credit limit
    if [ "$transaction_amount" -le "$approved_credit_limit" ]; then
        sleep 2s
        # Approve transaction and print message
        echo "Transaction approved. Thank you for your business!"
    else
        sleep 2s
        # Decline transaction and print message
        echo "Transaction declined. Transaction amount exceeds your credit limit of CAD $approved_credit_limit."
    fi
}

#Calling the function
perform_transaction
