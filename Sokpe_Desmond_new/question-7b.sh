#!/bin/bash

# Author: Sokpe Desmond
# Created on: 22/08/23

# Define an array of Linux distributions
linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

# Print each item in the array
echo "List of Linux Distributions:"
for distro in "${linux_distributions[@]}"; do
		    echo "- $distro"
done

# Print the size of the array
array_size=${#linux_distributions[@]}
       echo "Array size: $array_size"#!/bin/bash

# Define an array of Linux distributions
linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

# Print each item in the array
      echo "List of Linux Distributions:"
for distro in "${linux_distributions[@]}"; do
	echo "- $distro"
done

# Print the size of the array
array_size=${#linux_distributions[@]}
      echo "Array size: $array_size"
