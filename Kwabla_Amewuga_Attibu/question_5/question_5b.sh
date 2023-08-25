#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created: 20 August 2023.
#Date Modified:



if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 2
fi

file_or_dir="$1"

if [ -f "$file_or_dir" ]; then
    echo "$file_or_dir is a regular file."
    exit 0
elif [ -d "$file_or_dir" ]; then
    echo "$file_or_dir is a directory."
    exit 1
else
    echo "$file_or_dir is neither a regular file nor a directory."
    exit 2
fi

