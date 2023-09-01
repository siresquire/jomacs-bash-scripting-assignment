#!/bin/bash

linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

echo "List of Linux distributions:"
for distro in "${linux_distributions[@]}"; do
    echo "- $distro"
done

array_size=${#linux_distributions[@]}
echo "Array size: $array_size"

