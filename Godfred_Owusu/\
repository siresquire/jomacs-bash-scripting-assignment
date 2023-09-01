#!/bin/bash

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
fi

# Check if all three arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <username> <groupname> <password>"
    exit 1
fi

username="$1"
groupname="$2"
password="$3"

# Check if the group exists
if ! getent group "$groupname" >/dev/null; then
    echo "Group '$groupname' does not exist."
    exit 1
fi

# Check if the username already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
    exit 1
fi

# Create the user and set the password
useradd -m -g "$groupname" "$username"
echo "$username:$password" | chpasswd

echo "User '$username' has been created with password '$password' and added to group '$groupname'."

