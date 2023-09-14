#!/bin/bash

# FIVE BEST LINUX DISTRIBUTIONS

echo "Linux Distributions Array"
echo "-------------------------"

linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

echo "Array size: ${#linux_distributions[@]}"
echo

for distro in "${linux_distributions[@]}"; do
    echo "Distro: $distro"
    sleep 2s  # Adjust the sleep duration as needed
done

echo "Script execution completed."

