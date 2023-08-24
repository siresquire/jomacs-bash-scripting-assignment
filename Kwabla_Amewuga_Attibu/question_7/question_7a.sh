#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created:20 August, 2023 
#Date Modified:



if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory="$1"
size=$(du -sh "$directory" | cut -f1)

echo "Size of $directory: $size"

