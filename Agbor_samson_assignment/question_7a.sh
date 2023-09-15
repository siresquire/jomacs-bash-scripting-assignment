#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:5/9/2023
# Date Modified:
# Description:A script to output a given directory's size


if [ $# -ne 1 ]; then
	echo "Usage: $0 <directory>"
	exit 1
fi

dir="$1"
if [ ! -d "$dir" ]; then
	echo "Error: $dir is not a valid directory."
	exit 1
fi

du -sh "$dir"

exit 0


