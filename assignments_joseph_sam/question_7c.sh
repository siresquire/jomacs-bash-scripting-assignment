#!/bin/bash

#Author : Joseph Sam

# Check for root
if [ "$EUID" -ne 0 ]; then
    echo "WARNING! This script must be run as root."
    echo "Read the description on how to use script."
    exit 1
fi

# Check for arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <username> <groupname> <password>"
    exit 1
fi

# Read arguments
username="$1"
groupname="$2"
password="$3"

# Check if the group exists, if not, create it
if ! getent group "$groupname" >/dev/null; then
    groupadd "$groupname"
    echo "Group $groupname created"
fi

# Create the user with the provided username, add to the group, and set the password
useradd -m -s /bin/bash -g "$groupname" "$username"
echo "$username:$password" | chpasswd

echo "User $username created"
