#!/bin/bash

line_number=0

while IFS= read -r line; do
    line_number=$((line_number + 1))
    echo "$line_number: $line"
done < /etc/passwd

