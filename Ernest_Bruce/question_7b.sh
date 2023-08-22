#!/bin/bash
# Author: Ernest Bruce
# Created on: 20/08/2023
# Description:a bash script that has an array of five best Linux
# distributions. Let the script cycle through and print all
# the items in the array and the array size.

# Define an array of Linux distributions
linux_distributions=("Debian" "CentOS" "Arch Linux" "Ubuntu" "Fedora")

# Print each distribution in the array
echo "Linux Distributions:"
for distribution in "${linux_distributions[@]}"; do
    echo "$distribution"
done

# Print the size of the array
array_size=${#linux_distributions[@]}
echo "Array Size: $array_size"
