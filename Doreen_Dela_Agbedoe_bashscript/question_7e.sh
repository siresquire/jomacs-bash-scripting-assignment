#!/bin/bash
# Question_7e

# Author: Doreen Dela Agbedoe
# Created: 28th August 2023
# Modified: 5th September 2023
# Description: Odd-Even Number Identifier Script

# A script that accepts a number and determines if the
# number is odd or even. The response should be printed to
# the user on the screen.


read -p "Enter a number: " number

# Check if the number is divisible by 2 to get even number
if [ "$((number % 2))" -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi




