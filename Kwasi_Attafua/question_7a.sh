

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_7A
# Description: A bash script meant to output a given directory's size

# Read directory name from user input
echo "Enter directory name:"
read dir_name

# Check if directory exists
if [[ -d $dir_name ]]; then
    # Use du command to output the directory size in human-readable format
    du -sh $dir_name
else
    # Print error message
    echo "$dir_name is not a valid directory"
fi
