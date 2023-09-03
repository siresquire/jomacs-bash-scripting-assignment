#!/bin/bash
  
# Author: Enoch Gyampoh
# Date Created: 24/Aug/2023
# Description: Bash script  exit with a 0 exit status


# Check if an argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 2
fi

# Store the argument in a variable
file_or_dir="$1"

# Check if it's a regular file
if [ -f "$file_or_dir" ]; then
    echo "Regular file"
    echo "Exiting with 0,please wait ..."
    sleep 2
    exit 0
fi

# Check if it's a directory
if [ -d "$file_or_dir" ]; then
    echo "Directory"
    echo "Exiting with 1,please wait ..."
    sleep 2
    exit 1
fi

# For other file types
echo "Other type of file"
echo "Exiting with 0,please wait ..."
sleep 2
exit 2
