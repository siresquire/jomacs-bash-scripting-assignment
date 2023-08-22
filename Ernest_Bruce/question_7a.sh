#!/bin/bash
# Author: Ernest Bruce
# Created on: 20/08/2023
# Description: a shell script to output a given directory's size

# Check if an argument was provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Get the directory path from the argument
directory_path="$1"

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Directory not found: $directory_path"
    exit 1
fi

# Calculate and display the directory's size
du -sh "$directory_path"
