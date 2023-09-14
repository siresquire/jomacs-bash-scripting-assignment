#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23

bank=The_Royal_Bank_Of_Canada
Last_four_digit=4412
CVC=113

# Welcome message
echo "Dear Valued Customer You Are Welcome to $bank"
sleep 2s

# Kofi enters his last four digit and cvc
echo "Please Insert Your Card"
sleep 2s
echo "Please enter your last four digit"
read last_four_digit
echo "Please enter your cvc"
read cvc
sleep 1s

# A while loop to make sure Kofi's last four digit and cvc are correct
while [[ $last_four_digit != 4412 || $cvc != 113 ]]
do
	echo "Please your last four digit and cvc do not match"
	sleep 1s
	echo "Please try again"
	sleep 1s
	echo "Please enter your last four digit"
	read last_four_digit
	echo "Please enter your cvc"
	read cvc
done
sleep 1s

# Kofi's card is been activated
echo "Please wait we are activating your card.."
sleep 3s
echo "Your card have been activated succesfully"
sleep 1s

# Kofi set up a pin
echo "Please you will have to set up a four digit pin and password"
sleep 1s
echo "Please enter a new pin"
read pin1
echo "Please enter pin again"
read pin2
echo "Please wait"
sleep 2s

# A while loop to make both pin enteries match
while [ $pin1 != $pin2 ]
do
	echo "Please your pins do not match"
	sleep 1s 
	echo "Enter a new pin"
	read pin1
	echo "Enter pin again"
	read pin2
	echo "Please wait"
	sleep 2s
done

# Kofi set up a password
echo "Please enter a new password"
read -s password1
echo "Please enter password again"
read -s password2
echo "Please wait"
sleep 2s

# A while loop to make sure both password enteries match
while [ $password1 != $password2 ]
do
	echo "Please your passwords do not match"
	sleep 1s
	echo "Please enter a new password"
	read -s password1
	echo "Please enter password again"
	read -s password2
	echo "Please wait"
	sleep 2s
done

echo "Your pin and password have been set up succesfully."
sleep 1s
echo "You are all set"
echo "Thanks for working with us"
sleep 1s
echo "You can take your card"
echo "have a nice day"
exit 0

