#!/bin/bash

echo -n "How many lines of /etc/passwd would you like to see? "
read num_lines

if ! [[ "$num_lines" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

line_number=1

while IFS= read -r line && [ "$line_number" -le "$num_lines" ]; do
    echo "$line"
    ((line_number++))
done < "/etc/passwd"

