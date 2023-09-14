#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23


# Read the name, group name, and password of the new user
echo Enter the username
read username
echo Enter the group name
read groupname
echo Enter the password
read password
echo

# Create the new user
sudo useradd -m -g "$groupname" "$username"

# Set the password for the new user
echo "$username:$password" | chpasswd

# Print success message
echo "User $username has been created successfully."

