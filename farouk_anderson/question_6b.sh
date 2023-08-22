#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Date: 18th Aug 2023
# Description: Script that loops through the /etc/passwd
# file and ask the number of line to be displayed.
# 
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║            Author: Farouk Anderson            ║"
    echo "║            Date: 17th Aug 2023                ║"
    echo "║            Modified: 18th Aug 2023            ║"
    echo "║                                               ║"
    echo "║      ***Function to select line.***           ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo 

# Prompt the user for the number of lines
read -p "Enter the number of lines to display from /etc/passwd: " num_lines

# Check if the input is a positive integer
if ! [[ "$num_lines" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a positive integer."
    exit 1
fi

# Display the specified number of lines from /etc/passwd
head -n "$num_lines" /etc/passwd
