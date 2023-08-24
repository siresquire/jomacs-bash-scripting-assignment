#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created:20 August, 2023. 
#Date Modified:



line_number=1
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))
done < /etc/passwd

