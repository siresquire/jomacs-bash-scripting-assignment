#!/bin/bash

# Instructions to Kofi to activate his credit card at an RBC cash machine

echo "Welcome to RBC, Kofi Ezedike!"
echo "To activate your credit card and set up a PIN, please follow the instructions below."

# Insert the card
echo "1. Please insert your card ending in XXXXXXX4412."
read -p "Press Enter when your card is inserted."

# Prompt for PIN setup
echo "2. Please enter your desired 4-digit PIN:"
read -s pin1

echo "3. Please re-enter your PIN for confirmation:"
read -s pin2

# Verify PIN entries
if [ "$pin1" == "$pin2" ]; then
    echo "PIN successfully set up. Thank you, Kofi!"
    echo "Your card is now activated and ready to use."
else
    echo "PIN entries do not match. Please try again."
fi

echo "Thank you for choosing RBC. Have a great day, Kofi!"

# Add a slight delay for a more realistic interaction
sleep 2s

