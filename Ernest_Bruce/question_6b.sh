#!/bin/bash

# Ask the user for the number of lines
read -p "How many lines of /etc/passwd would you like to see? " num_lines

# Check if the input is a valid positive integer
if [[ ! "$num_lines" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid positive integer."
    exit 1
fi

# Display the specified number of lines from /etc/passwd
head -n "$num_lines" /etc/passwd
