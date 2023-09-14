#!/bin/bash

# FILE OR DIRECTORY TYPE CHECKER

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file or directory>"
    exit 2
fi

file_or_dir="$1"

if [ -f "$file_or_dir" ]; then
    echo "Regular file: $file_or_dir"
    sleep 2s # Adding a sleep to slow down the script's execution
    exit 0
elif [ -d "$file_or_dir" ]; then
    echo "Directory: $file_or_dir"
    sleep 2s # Adding a sleep to slow down the script's execution
    exit 1
else
    echo "Other type of file: $file_or_dir"
    sleep 2s # Adding a sleep to slow down the script's execution
    exit 2
fi

