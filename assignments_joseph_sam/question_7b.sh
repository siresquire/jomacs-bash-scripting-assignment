#!/bin/bash

#Author :Joseph Sam


linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")


echo "Linux distributions:"
for distro in "${linux_distributions[@]}"; do
    echo "$distro"
    sleep 1s
done


sleep 2s


array_size=${#linux_distributions[@]}
echo "Array size: $array_size"
