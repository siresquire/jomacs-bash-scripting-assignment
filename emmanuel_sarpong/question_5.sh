#!/bin/bash

#question a.
echo "This will exit with a 0 exit status"
exit 0

#queston b.


file=$1

if [ -f "$file" ]; then
    echo "$file is a regular file"
    exit 0
elif [ -d "$file" ]; then
    echo "$file is a directory"
    exit 1
else
    echo "$file is some other type of file"
    exit 2
fi


#question c

cat /etc/shadow

if [ $? -eq 0 ]; then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi










































