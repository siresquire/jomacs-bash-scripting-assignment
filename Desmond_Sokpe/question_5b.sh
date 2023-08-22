#!/bin/bash

# Check if an argument is provided
if [ $# -ne 1 ]; then
	    echo "Usage: $0 <file or directory>"
	        exit 2
fi

target="$1"

# Check if the target exists
if [ ! -e "$target" ]; then
	    echo "File or directory '$target' not found."
	        exit 2
fi

# Check the type of the target
if [ -f "$target" ]; then
	    echo "Regular file: $target"
	        exit 0
	elif [ -d "$target" ]; then
		    echo "Directory: $target"
		        exit 1
		else
			    echo "Other type of file: $target"
			        exit 2
fi
~
