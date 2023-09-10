#!/bin/bash

# Author: Dominic Quansah
# Dated Created: 30/08/23
# Description:This shell script is to output a given directory's size

# Check if an argument was provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Get the directory path from the argument
directory="$1"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "$directory is not a valid directory."
    exit 1
fi

# Calculate and display the directory's size
du -sh "$directory"
