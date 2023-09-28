#!/bin/bash
#Question_7B
#Author: Doreen Dela Agbedoe
#Created: 27th August 2023
#Description: Linux Distributions Showcase Script

# A bash script that has an array of five best Linux distributions.
# The script cycles through and prints all the items in the array and the array size.

linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

echo "Linux Distributions:"
for distro in "${linux_distributions[@]}"; do
    echo "$distro"
done

array_size=${#linux_distributions[@]}
echo "Array Size: $array_size"





