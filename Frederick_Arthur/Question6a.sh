#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23

# A variable set to etc/passwd and the first line of the etc/passwd file
filename="/etc/passwd"
line_number=1

# A loop that print the etc/passwd file with a line number and colon
while IFS= read -r line
do
	echo $line_number: $line
	((line_number++))
done < "$filename"

