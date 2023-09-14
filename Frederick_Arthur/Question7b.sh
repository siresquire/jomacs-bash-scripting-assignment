#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23


# Declare an array of five best Linux distributions
linux_distributions=("Ubuntu" "Fedora" "Arch Linux" "Debian" "CentOS")

# Loop through the array and print each item
for distro in ${linux_distributions[@]} 
do
	echo $distro
done

# Print the size of the array
array_size=${#linux_distributions[@]}
echo "Array size: $array_size"

