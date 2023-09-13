#!/bin/bash

# CREATING A NEW UBUNTU USER

echo "Ubuntu User Creation Script"
echo "---------------------------"

read -p "Enter the new username: " username
read -p "Enter the group name (default: $username): " groupname
read -s -p "Enter the password for $username: " password

echo
echo "Creating user $username with password $password and group $groupname..."

# Create user and set password
sudo useradd -m -g "$groupname" "$username"
echo "$username:$password" | sudo chpasswd

echo "User $username created successfully."

# Array example
fruits=("apple" "banana" "orange" "grape" "kiwi")

echo
echo "Cycling through the array and printing items:"
for fruit in "${fruits[@]}"; do
    echo "Item: $fruit"
    sleep 2s  # Adjust the sleep duration as needed
done

echo
echo "Array size: ${#fruits[@]}"

echo "Script execution completed."

