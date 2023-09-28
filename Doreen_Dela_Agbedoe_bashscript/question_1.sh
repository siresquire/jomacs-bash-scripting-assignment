#!/bin/bash
#Question_1

#Author - Doreen Dela Agbedoe
#Created - 24th August, 2023
#Modified - 4th September, 2023
#Description - This script is to help a client set up a new pin 
#after confirming identity of the client using visa card number suffix and CVC

#Declaring variables to loop a 3 attempt pin set up
max_attempts=3
attempts=1

#Function to set pin
set_pin() {
#Pleasantries
echo "Welcome to PIN Setup"

sleep 2s

#Requesting new pin in 20 seconds
echo "Enter a new PIN in 20 seconds: "

if read -s -t 20 PIN1; then
   echo "Confirm your new PIN in 20 seconds"
else
   echo "Timeout, no input entered in 20 seconds"
   set_pin
fi

sleep 2s

#Requesting confirmation of new pin in 20 seconds
if read -s -t 20 PIN2; then
   echo "Wait for validation of pins"
   sleep 2s
else
   echo "Timeout, no input entered in 20 seconds"
   set_pin
fi

#validation of pins
if [ $PIN1 = $PIN2 ]; then
        pin=$PIN1
        echo "PIN successfully set."
        exit 0
else
        echo "PINs do not match. Please try again."
fi

sleep 2s

#loop for set_pin function

while [ $attempts -lt $max_attempts ]; 
do   
     echo "You have 3 attempts"
     echo "You have used ($attempts) attempts"
     attempts=$((attempts+1)) 
     set_pin
     echo "Maximum attempts reached. Exiting."
     exit 1
done

}


#Validating card digits and CVC before pin set up
#asssumption is that Kofi has a sheet with the XXXXXXX4412 with CVC of 113

#Pleasantries
echo "Welcome to RBC! Please insert your card"

sleep 2s

#Requesting card number suffix and CVC within 20 seconds each
echo "Please enter the last four digits on your RBC card in 20seconds: "

if read -s -t 20 card_digits; then
   echo "You have entered the last four digits on your card"
   sleep 2s
else
   echo "Timeout, no input received within 10 seconds"
   exit 1
fi

echo "please enter your CVC in 20 seconds: "

if read -s -t 20 CVC; then
   echo "You have entered your CVC"
   sleep 2s
else
   echo "Timeout, no input received within 20 seconds"
   exit 1
fi

sleep 2s

#validation of inputs
expected_card_number_suffix=4412
expected_cvc=113

if [ $card_digits = $expected_card_number_suffix ]; then
        echo "card_number_suffix verified."
else
        echo "card_number_suffix not verified. Exiting."
        exit 1
fi

sleep 2s

if [ $CVC = $expected_cvc ]; then
        echo "CVC verified."
else
        echo "CVC not verified"
        exit 1
fi

sleep 2s

#Calling the set_pin function
set_pin



