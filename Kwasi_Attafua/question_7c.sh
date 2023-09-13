

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_7C
# Description: Bash script that creates a new ubuntu user.

# Check if three arguments are provided
if [ $# -ne 3 ]; then
    # Display message
    echo "Usage: $0 <username> <groupID> <password>"
    exit 1
fi

# Variables & arguments
username="$1"
groupname="$2"
password="$3"

# Create the user with the provided information
sudo useradd -m -g "$groupname" "$username"
echo "$username:$password" | sudo chpasswd

echo "User $username created with password $password and group name $groupname"
