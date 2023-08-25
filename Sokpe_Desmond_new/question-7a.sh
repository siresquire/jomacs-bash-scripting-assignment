#!/bin/bash

# Author: Sokpe Desmond
# Created on: 22/08/23

if [ $# -ne 1 ]; then
		    echo "Usage: $0 <directory>"
		    	        exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
		    echo "Error: '$directory' is not a valid directory."
		    	        exit 1
fi

du -sh "$directory"
