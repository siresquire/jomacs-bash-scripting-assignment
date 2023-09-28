#!/bin/bash

#Author: David Maabobra Aanye
#Date created: 01/08/2023
#subject: BASH SCRIPT FOR ATM CARD ACTIVATION

 # Wecome to RBC
  echo "Welocme to RBC"
   sleep 3s
  
 #Prompt user to insert Card
 echo "Please insert your card to start"
 
 sleep 3s

 echo "Wait, processing..........."

sleep 4s

echo "Hello Kofi Ezedike, Welcome to RBC"

sleep 3s

#Prompt for Card number
echo "The last four digits of your card are required to activate your card"

read -p "Please enter the last foru digits of your 
    card" card_four_digits

#Prompt for CVC
read -sp "Enter your CVC:" CVC
echo
sleep 3s

#Prompt for card expiration date
read -p "Please enter your card's expiration date(MM/YY: "expiration_date

echo

#Prompt for setting up a pin
    read -sp "Enter a 4-digit  pin: " pin
    echo $pin
    
#Prompt for verification of pin
    read -sp "Re-enter your pin: " pin1
    echo $pin1

    echo

    sleep 2s

    echo "Wait, processing..........."

    sleep 4s

    #Cross-checking pin
    if [ "$pin" == "$pin1" ]; then

	            echo "Pin set, card successfully activated"

	    else
		    echo "Pin authentication failed, card activated unsuccessful"

    fi

    sleep 4s

    echo "Thank you for using our services"
