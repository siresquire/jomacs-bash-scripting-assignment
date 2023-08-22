#!/bin/bash
# Author: Ernest Bruce
# Created on: 20/08/2023
# Description: a script that accepts a number and determines if the

# number is odd or even. The response should be printed to
# the user on the screen.



read -p "Enter a number: " number

# Check if the number is divisible by 2 to get even number
if [ "$((number % 2))" -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi
