#!/bin/bash

read -p "Enter the new username: " username
read -p "Enter the group name (default is same as username): " groupname
read -s -p "Enter the password for $username: " password
echo

# Set default group name if not provided
if [ -z "$groupname" ]; then
    groupname=$username
fi

# Create the user with the provided username and add to the group
sudo adduser --ingroup $groupname $username

# Set the password for the new user
echo "$username:$password" | sudo chpasswd

echo "User $username has been created with password '$password' and added to group $groupname."

