#!/bin/bash

#Author: Fuseini Tia Iddrisu

filename="/etc/passwd"
while IFS=: read -r username password userid groupid comment homedir cmdshell
do
	echo "$username, $userid, $comment, $homedir"
done < $filename


#!/bin/bash

number_lines="3"
echo "how many lines of /etc/passwd would you like to see"
if [[ ! $number_lines=~^[1-3][0-9]*$ ]];
then
	echo "Inalid input"
	exit 1
fi
head -n "$number_lines" /etc/passwd

#!/bin/bash

options=("option 1" "option 2" "option 3" "quit"
while true;
do
	echo "1. Show disk usage."
	echo "2. Show system uptime."
	echo "3. Show the user logged into the system."
	echo "What would you like to do? (Enter 'q' to quit.)"
	read opt;
	case $opt in
		1) echo "show disk usage.";;
		2) echo "show system uptime.";;
		3) echo "show logged-in users.";;
		echo "Good bye!"
	exit 0;;	
	break
       	echo "Invalid option.";;
esac
done 




