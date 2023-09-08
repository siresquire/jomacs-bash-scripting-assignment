#!/bin/bash

# Author: Enoch Gyampoh
# Created on: 30/08/2023
# Description: a script that accepts a number and determines if the

# number is odd or even. The response should be printed to
# the user on the screen.

read -p "Enter a number: " number

# Check if the number is divisible by 2
if ((number % 2 == 0)); then
    echo "$number is an even number."
else
    echo "$number is an odd number."
fi

