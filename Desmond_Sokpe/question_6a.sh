#!/bin/bash

line_number=1

while IFS= read -r line; do
	    echo "$line_number: $line"
	        ((line_number++))
	done < /etc/passwd

