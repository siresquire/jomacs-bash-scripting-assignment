#!/bin/bash

# Author: Dominic Quansah
# Date Created: 30/08/23
# Description:This Scripts checks or identify File types


if [ $# -ne 1 ]; then
    echo "Main File: $0 <file_or_directory>"
    exit 2
fi

# Get the file/directory name from the argument
file_or_directory="$1"

# Check the type of the file or directory
if [ -f "$file_or_directory" ]; then
    echo "$file_or_directory is a regular file."
    exit 0
elif [ -d "$file_or_directory" ]; then
    echo "$file_or_directory is a directory."
    exit 1
else
    echo "$file_or_directory is some other type of file."
    exit 2
fi

