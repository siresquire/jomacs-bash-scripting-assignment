#!/bin/bash

read -p "Enter a number: " input_number

# Calculate the remainder when dividing by 2
remainder=$((input_number % 2))

if [ "$remainder" -eq 0 ]; then
	    echo "$input_number is even."
    else
	        echo "$input_number is odd."
fi
~
