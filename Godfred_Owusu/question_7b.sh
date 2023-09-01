#!/bin/bash

# Array of Linux distributions
linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

# Loop through the array and print each distribution
for distribution in "${linux_distributions[@]}"; do
    echo "Linux Distribution: $distribution"
done

# Print the array size
array_size=${#linux_distributions[@]}
echo "Array Size: $array_size"

