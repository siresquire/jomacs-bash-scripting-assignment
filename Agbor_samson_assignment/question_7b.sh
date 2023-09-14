#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:6/9/2023
# Date Modified:
# Description:A script that has an array of five best Linux distributions.


linux_distributions=("Ubuntu" "Debian" "Fedora" "Arch Linux" "centOS")

echo "Linux distributions:"
for distro in "${linux_distributions[@]}"; do
	echo "- $distro"
done

echo "Array size: ${#linux_distributions[@]}"

exit 0

