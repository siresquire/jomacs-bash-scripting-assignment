#!/bin/bash

# Author: Dominic Quansah
# Date Created: 30/08/23
# Description:This Scripts has an array of five best linux distributions.Let the script cycle 
#through and print all the items in the array and the array size.


# Define an array of Linux distributions
linux_distributions=("Debian" "CentOS" "Arch Linux" "Ubuntu" "Fedora")

# Print each distribution in the array
echo "Linux Distributions:"
for distro in "${linux_distributions[@]}"; do
	echo "$distro"
	sleep 2s
done

# Print the size of the array
array_size=${#linux_distributions[@]}
echo "Array size: $array_size"

