#!/bin/bash

# ACCEPTING A NUMBER AND DETERMINING IF THE NUMBER IS ODD OR EVEN

echo "Odd or Even Number Checker"
echo "--------------------------"

read -p "Enter a number: " number

remainder=$((number % 2))

echo "Checking if $number is odd or even..."
sleep 2s  # Adjust the sleep duration as needed

if [ "$remainder" -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi

echo "Script execution completed."

