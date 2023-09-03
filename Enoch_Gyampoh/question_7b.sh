#!/bin/bash

# Author: Enoch Gyampoh
# Created on: 30/08/2023
# Description:a bash script that has an array of five best Linux
# distributions. Let the script cycle through and print all
# the items in the array and the array size.

# Define an array of Linux distributions
linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

# Print array elements and array size
echo "Linux distributions:"
for distro in "${linux_distributions[@]}"; do
    echo "- $distro"
done

# Print array size
array_size=${#linux_distributions[@]}
echo "Array size: $array_size"
