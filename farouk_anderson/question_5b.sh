#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Date: 18th Aug 2023
# Description: This script checks the file or directory
#              and report regular file. 
#              Ex:./script.sh /spicify file or dir path.
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║          Author: Farouk Anderson              ║"
    echo "║          Created: 18th Aug 2023               ║"
    echo "║          Modified: 20th Aug 2023              ║"
    echo "║                                               ║"
    echo "║       ***File Type Checker.***                ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file or directory>"
    exit 2
fi

# Check if the argument exists
if [ ! -e "$1" ]; then
    echo "Error: '$1' does not exist."
    exit 2
fi

# Check if it's a regular file
if [ -f "$1" ]; then
    echo "'$1' is a regular file."
    exit 0
fi

# Check if it's a directory
if [ -d "$1" ]; then
    echo "'$1' is a directory."
    exit 1
fi

# If it's neither a regular file nor a directory
echo "'$1' is some other type of file."
exit 2