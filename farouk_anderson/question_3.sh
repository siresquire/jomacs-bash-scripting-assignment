#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Date: 119th Aug 2023
# Description: This script demonstrates the transaction of
#              limit of Credit Card to approve or decline.
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║          Author: Farouk Anderson              ║"
    echo "║          Created: 18th Aug 2023               ║"
    echo "║          Modified: 19th Aug 2023              ║"
    echo "║                                               ║"
    echo "║       ***Card Limit Simulation.***            ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo

# Kofi's approved credit limit
credit_limit=1000

# Function to process a transaction
process_transaction() {
    local amount=$1

    if ((amount <= credit_limit)); then
        echo "Transaction approved: $amount"
    else
        echo "Transaction declined: $amount (above credit limit)"
    fi
}

# Main loop to process transactions
while true; do
    echo "Enter transaction amount (or 'q' to quit):"
    read input

    if [[ "$input" == "q" ]]; then
        echo "Exiting transaction."
        break
    fi

    if [[ ! "$input" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a valid transaction amount."
        continue
    fi

    process_transaction "$input"
done
