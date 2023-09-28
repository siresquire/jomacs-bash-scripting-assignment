#!/bin/bash
#Question_7A
#Author: Doreen Dela Agbedoe
#Created: 27th August 2023
#Description: Directory Size Reporter Script

# Check if a directory is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory="$1"

# Check if the provided path is a directory
if [ ! -d "$directory" ]; then
    echo "Error: $directory is not a directory"
    exit 1
fi

# Get the size of the directory and print it
size=$(du -sh "$directory" | cut -f1)
echo "Size of $directory: $size"



