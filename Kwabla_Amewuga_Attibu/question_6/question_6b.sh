#!/bin/bash



echo -n "How many lines of /etc/passwd would you like to see? "
read num_lines

count=0
while IFS= read -r line; do
    echo "$line"
    ((count++))
    if [ "$count" -ge "$num_lines" ]; then
        break
    fi
done < /etc/passwd

