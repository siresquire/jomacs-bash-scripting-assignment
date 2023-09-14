#!/bin/bash

# Prompt the user to enter a number
echo enter a number
read number

# Check if the number is divisible by 2
if (( $number % 2 == 0 ))
then
	echo "The number is even."
else
	echo "The number is odd."
fi

