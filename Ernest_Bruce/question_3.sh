#! /bin/bash

# Author:Ernest Bruce
# Created on:18/08/2023
#
#
# Description:

# 
creditlimit=2000

function processPayment() {


    echo -n "Enter transaction details: "
    read transaction
    echo
    echo -n "Enter amount: $"
    read transamount

    if [ "$transamount" -le "$creditlimit" ]; then
      echo
      echo "Processing payment....."
      sleep 3
      echo "Transaction approved."
      creditlimit=$(( creditlimit - transamount))
     echo "Updated credit limit: $creditlimit"
    else
      echo
      echo "Processing payment....."
      sleep 3
      echo "Transaction declined."
    fi

}

while true; do
    processPayment

    read -p "Do you want to process another transaction? (yes/no): " choice

    choice_lower=$(echo "$choice" | tr '[:upper:]' '[:lower:]')

    if [ "$choice_lower" == "no" ]; then
       echo "Exiting..."
       break
    elif [ "$choice_lower" != "yes" ]; then
       echo "Invalid choice. Please enter 'yes or 'no'."
    fi
 done

