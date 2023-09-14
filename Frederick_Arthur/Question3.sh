#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23

# Assign varriable to the credit limit
Credit_Limit=2000

# Kofi enters credit amount
echo Please enter credit amount
read credit
echo Please wait
sleep 2s

# A check to make sure the entered amount is not more than 2000
while [ $credit -gt $Credit_Limit ]
do
	echo Transaction decline 
	echo Amount entered exceeds your credit limit
	sleep 1s
	echo Please enter an amount between 1 - 2000
	read credit
done

# Transaction approved
echo Your transaction was approved.
sleep 1s
echo Thank you for working with us.
