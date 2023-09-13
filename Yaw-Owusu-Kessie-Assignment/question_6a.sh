#!/bin/bash

# PASSWORD DISPLAY

echo "Line Numbers with /etc/passwd Contents"
echo "---------------------------------------"

line_number=0

while IFS= read -r line; do
    ((line_number++))
    echo "$line_number: $line"
    sleep 2s  # Adjust the sleep duration as needed
done < /etc/passwd

echo "---------------------------------------"
echo "Script execution completed."

