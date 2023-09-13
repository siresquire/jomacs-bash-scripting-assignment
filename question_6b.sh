#!/bin/bash

# DISPLAY LINES

echo "Display Lines from /etc/passwd"
echo "------------------------------"

read -p "How many lines of /etc/passwd would you like to see? " num_lines

echo "Fetching and displaying $num_lines lines:"

line_number=0

while IFS= read -r line && [ "$line_number" -lt "$num_lines" ]; do
    ((line_number++))
    echo "$line"
    sleep 2s  # Adjust the sleep duration as needed
done < /etc/passwd

echo "------------------------------"
echo "Script execution completed."

