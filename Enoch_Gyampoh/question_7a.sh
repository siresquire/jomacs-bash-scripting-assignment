#!/bin/bash

# Author: Enoch Gyampoh
# Created on: 25/08/2023
# Description: a shell script to output a given directory's size

# Check if an argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory="$1"

# Check if the provided path is a valid directory
if [ ! -d "$directory" ]; then
    echo "Error: '$directory' is not a valid directory."
    exit 1
fi

# Calculate and display the directory size
du -sh "$directory"

