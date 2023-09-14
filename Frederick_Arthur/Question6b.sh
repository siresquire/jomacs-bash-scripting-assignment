#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23

# Ask user for nomber of lines to display
echo How many lines of the etc/passwd file do you want to see
sleep 1s

# User input number of line
read num
head -n $num /etc/passwd
