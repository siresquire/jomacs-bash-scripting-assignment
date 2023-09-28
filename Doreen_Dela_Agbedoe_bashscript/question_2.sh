#!/bin/bash
#Question_2

#Author - Doreen Dela Agbedoe
#Created - 25th August, 2023
#Modified - 4th September, 2023
#Description - Validation of client's card digits, 
#post code and cvc to accept or decline an online transaction.

#Variables to create a 3-attempt loop 
attempts=1
max_attempts=3
 
#Function for transaction processing
transaction_process() {
#Pleasantries
echo "Welcome to udemy, Kofi."

sleep 2s

#Expected Values:
Expected_card_digits=1234567812344412
Expected_post_code=T4E5J1
Expected_CVC=113

#Request for client's inputs
echo "Please, enter the 16 digits on your card."

read card_digits

echo "Please, enter your postcode"

read post_code

echo "please enter the CVC: "

read CVC

#Verification of inputted values
if [ $card_digits = $Expected_card_digits ] && [ $post_code = $Expected_post_code ] && [ $CVC = $Expected_CVC ]; then
     echo "Transaction successful"
else
     while [ $attempts -le $max_attempts ];   
     do
	echo "Transaction declined. You have 3 minus $attempts attempts left"
	attempts=$((attempts+1))
	sleep 2s
	transaction_process
     done
fi

}

echo "Transaction declined. Your card has been blocked. Contact your bank."



#Calling the function
transaction_process



