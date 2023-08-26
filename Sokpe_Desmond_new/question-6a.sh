#!/bin/bash

# Author: Sokpe Desmond
# Created on: 22/08/23

line_number=1

while IFS= read -r line; do
      echo "$line_number: $line"
	  ((line_number++))
done < /etc/passwd
