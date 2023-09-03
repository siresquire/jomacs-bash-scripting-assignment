#!/bin/bash

echo -n "How many lines of /etc/passwd would you like to see? "
read num_lines

if ! [[ "$num_lines" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

head -n "$num_lines" /etc/passwd

