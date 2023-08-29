#!/bin/bash

#Author :Joseph Sam



echo "Enter the full path to the file."
read file
sleep 2s


filesize=$(ls -lh $file | awk '{print  $5}')
echo "$file has a size of $filesize"
