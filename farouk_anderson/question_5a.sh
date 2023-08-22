#!/bin/bash

# Part a
echo "This will exit with a 0 exit status"
exit 0

# Part b
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 2
fi

file_or_dir="$1"

if [ -f "$file_or_dir" ]; then
    echo "Regular file"
    exit 0
elif [ -d "$file_or_dir" ]; then
    echo "Directory"
    exit 1
else
    echo "Other type of file"
    exit 2
fi

