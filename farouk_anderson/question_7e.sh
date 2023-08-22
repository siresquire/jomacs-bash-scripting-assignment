#!/bin/bash

##############################################################
#
# Author: Farouk Anderson
# Date: 18th Aug 2023
# Description: This script is used to determine if a number   
#              is odd or even. It also check for invalid input.
##############################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║          Author: Farouk Anderson              ║"
    echo "║          Created: 18th Aug 2023               ║"
    echo "║          Modified: 18th Aug 2023              ║"
    echo "║                                               ║"
    echo "║       ***ODD OR EVEN CALCULATE.***            ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo

read -p "Enter a number: " input_number

# Check if the input is a valid number
if ! [[ "$input_number" =~ ^[0-9]+$ ]]; then
    echo "Error: Invalid input. Please enter a valid number."
    exit 1
fi

# Calculate the remainder when dividing by 2
remainder=$((input_number % 2))

# Print the result with a delay
echo "Processing..."
sleep 1

if [ "$remainder" -eq 0 ]; then
    echo "$input_number is even."
else
    echo "$input_number is odd."
fi