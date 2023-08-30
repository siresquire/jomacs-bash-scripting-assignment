#!/bin/bash

# Check if an argument was provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 2
fi

file_or_dir="$1"

# Check if it's a regular file
if [ -f "$file_or_dir" ]; then
    echo "$file_or_dir is a regular file."
    exit 0
fi

# Check if it's a directory
if [ -d "$file_or_dir" ]; then
    echo "$file_or_dir is a directory."
    exit 1
fi

# If it's neither a regular file nor a directory
echo "$file_or_dir is some other type of file."
exit 2

