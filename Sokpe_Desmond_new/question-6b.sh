#!/bin/bash

# Author: Sokpe Desmond
# Created on: 22/08/23

read -p "How many lines of /etc/passwd would you like to see? " num_lines

if [[ ! "$num_lines" =~ ^[0-9]+$ ]]; then
		    echo "Please enter a valid number."
		    	        exit 1
fi

head -n "$num_lines" /etc/passwd
