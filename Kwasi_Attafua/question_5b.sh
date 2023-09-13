

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_5B
# Description: Bash script that accepts a file or directory name as an argument.

# This will ensure a user enters an argument, which is the file or directory to be checked
if [ $# -eq 0 ]; then
    sleep 2s
    echo "Usage: $0 <file_or_directory>"
    sleep 1s
    exit 2
fi

# This is to alert the user if the file or directory entered as argument does not exist
if [ ! -e "$1" ]; then
    sleep 2s
    echo "Error: $1 does not exist."
    sleep 1s
    exit 2
fi

# If the file or directory entered exists, this checks whether the file or directory is a file or directory or some other type of file
if [ -f "$1" ]; then
    sleep 2s
    echo "$1 is a regular file."
    sleep 1s
    exit 0
elif [ -d "$1" ]; then
    sleep 2s
    echo "$1 is a directory."
    sleep 1s
    exit 1
else
    sleep 2s
    echo "$1 is some other type of file."
    sleep 1s
    exit 2
fi
