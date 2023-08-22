#!/bin/bash

# Declare an array of Linux distributions
linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

# Print each item in the array with a pause
echo "Linux distributions:"
for distro in "${linux_distributions[@]}"; do
    echo "$distro"
    sleep 1  # Sleep for 1 second
done

# Add a pause before printing the array size
sleep 2  # Sleep for 2 seconds

# Print the array size
array_size=${#linux_distributions[@]}
echo "Array size: $array_size"