#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Description: This script is to demnstrate the output size 
#              of a given directory.
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║          Author: Farouk Anderson              ║"
    echo "║          Created: 18th Aug 2023               ║"
    echo "║          Modified: 19th Aug 2023              ║"
    echo "║                                               ║"
    echo "║      ***Script output Directory Size***       ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo

# Check if a directory path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Get the directory path from the command line argument
directory="$1"

# Check if the provided path is a directory
if [ ! -d "$directory" ]; then
    echo "$directory is not a valid directory"
    exit 1
fi

# Calculate the size of the directory using 'du' command
directory_size=$(du -sh "$directory" | awk '{print $1}')

# Output the directory size
echo "Size of $directory: $directory_size"