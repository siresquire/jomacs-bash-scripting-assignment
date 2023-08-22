 #!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Date: 17th Aug 2023
# Description: This script demonstrates the transaction of
#              of Credit Card.
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║          Author: Farouk Anderson              ║"
    echo "║          Created: 17th Aug 2023               ║"
    echo "║          Modified: 18th Aug 2023              ║"
    echo "║                                               ║"
    echo "║       ***Transaction Simulation.***           ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo 

# Welcome message
echo "Welcome to your first CNP transaction at Udemy.com, Kofi!"

# Prompt for 16-digit card number
read -p "Enter the first part of your 16-digit card number (ending with XXXX4412): " card_prefix

# Check if card number ends with "4412"
if [[ $card_prefix == *4412 ]]; then
    # Prompt for postcode
    read -p "Enter your postcode: " postcode

    # Prompt for CVC
    read -sp "Enter your CVC: " cvc
    echo

    # Prompt for PIN
    read -sp "Enter your PIN: " pin
    echo

    # Check if postcode, CVC and PIN are correct
    if [[ $postcode == "T4E5J1" && $cvc == "113" && $pin == "1957" ]]; then
        echo "Transaction successful! Enjoy your course on Udemy.com, Kofi."
    else
        echo "Transaction declined. Incorrect postcode, CVC or PIN. Your card has been blocked."
	echo "Payment Card Fruad Alert. If you dont't recognize this activity, please contact your bank immediately."
    fi
else
    echo "Invalid card number. Please make sure the last 4 digits ends with 4412."
fi
