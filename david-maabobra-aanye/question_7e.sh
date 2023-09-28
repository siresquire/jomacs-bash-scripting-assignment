#!/bin/bash

#Author: David
#Date created: 09/09/2023
#Subject:



#Accept an integer
read -p "Enter a number: " input_integer

# Calculate the remainder when dividing by 2
remainder=$((input_integer % 2))


# Print the result
echo "Wait.........."
sleep 4s

if [ "$remainder" -eq 0 ]; then
	    echo "$input_integer is even."
    else
	        echo "$input_integer is odd."
fi

