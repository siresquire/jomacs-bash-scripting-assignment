#!/bin/bash

# Author: Enoch
# Date Created: 24/Aug/2023
# Description: 

credit_limit=2000

function process_transaction() { 
	echo -p "Enter amount: $"
	read transamount

	if [ "$transamount" -le "$credit_limit" ]; then
		echo "Processing payment....."
		sleep 2
		echo "Transaction approved."
		credit_limit=$((credit_limit - transamount))
		echo "Updated credit limit: $credit_limit"
	else
		echo "Processing payment....."
		sleep 2
		echo "Amount entered is above credit limit"
		echo "Transaction declined."
		exit 1
	fi

 }

 while true; do
	 process_transaction

	 read -p "Do you want to process another transaction (yes/no): " choice

	if [ "$choice" == "no" ]; then
		echo "Exiting...."
		break
	elif [ "$choice" == "yes" ]; then
		process_transaction
	else
		echo "Invalid choice. Please enter 'yes or no' to proceed"
		break
	fi	
    
done

