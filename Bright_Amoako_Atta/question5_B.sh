#!/bin/bash

if [ $# -ne 1 ]; then
    echo " $0 <file_or_directory>"
    exit 1
fi

target="$1"

if [ -f "$target" ]; then
    echo "Regular file"
    exit 0
elif [ -d "$target" ]; then
    echo "Directory"
    exit 1
else
    echo "Other type of file"
    exit 2
fi

