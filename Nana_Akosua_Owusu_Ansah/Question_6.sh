




#!/bin/bash
#Question_6a

#Author: Nana Akosua Konadu Owusu-Ansah
#Created: 25th August 2023
#Modified; 8th September 2023
#Description:

# Initialize line number
line_number=1

# Loop through each line in /etc/passwd
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))
done < /etc/passwd
