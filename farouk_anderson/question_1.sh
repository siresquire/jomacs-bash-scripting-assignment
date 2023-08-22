#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Description: This script demonstrates the activation of
#              of Credit Card.
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║          Author: Farouk Anderson              ║"
    echo "║          Created: 17th Aug 2023               ║"
    echo "║          Modified: 18th Aug 2023              ║"
    echo "║                                               ║"
    echo "║        ***Credit Card Activation***           ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo


# Welcome message
echo "Welcome to RBC, Kofi Ezedike!"
echo "Please insert your card to activate and set up a PIN."
    

# Prompt for card number
read -p "Enter the last four digits of your card number: " card_last_four
sleep 2

# Prompt for CVC
read -sp "Enter your CVC: " cvc
echo
sleep 2

# Prompt for PIN
read -sp "Enter your new PIN: " pin1
echo
sleep 2

# Prompt to verify PIN
read -sp "Re-enter your new PIN for verification: " pin2
echo

# Check if PINs match
if [ "$pin1" == "$pin2" ]; then
    echo "Thank you, Kofi! Your card has been activated, and your PIN has been set."
    echo "You can now use your card at RBC cash machines."
else
    echo "PINs do not match. Please start the activation process again."
fi
