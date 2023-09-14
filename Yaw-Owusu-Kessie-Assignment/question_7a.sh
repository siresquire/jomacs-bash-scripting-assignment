#!/bin/bash

# CALCULATING AND DISPLAYING THE SIZE OF A GIVEN DIRECTORY

echo "Directory Size Calculator"
echo "------------------------"

read -p "Enter the path of the directory: " dir_path

# Check if the provided path is a directory
if [ ! -d "$dir_path" ]; then
    echo "Error: '$dir_path' is not a valid directory."
    exit 1
fi

echo "Calculating size of '$dir_path'..."

# Using du command to calculate directory size
dir_size=$(du -sh "$dir_path" | cut -f 1)

echo "Size of '$dir_path': $dir_size"
echo "------------------------"

sleep 2s  # Adjust the sleep duration as needed

