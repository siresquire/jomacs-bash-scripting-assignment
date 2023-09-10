#!/bin/bash

#Authur:Georgina Tetteh
#Date created: 21/08/2023
#Date Modified:29/08/2023
#Question 2

#Description:This script displays greeting message
echo "hello Kofi welcome to udemy.com"
sleep 3s

echo "follow these steps for your first transaction"
sleep 2s
#echo "log in with username"
#read -p "username: " ezedike


block_message="card blocked due to wrong details provided"
correct_post_code="T4E5J1"
correct_cvc=113

#accepts the card number, post code and cvc
read -p "what is your card number: " number
read -p "enter your post code: " post_code
read -p "enter your card cvc: " cvc

#check if card number is not numbers or not 16 digits or does not end in 4412 -- use an if statement to acheive that
#if not block and exit 
if ! [[ $number =~ ^[0-9]{16}$ ]] && ! [[ $number =~ .*4412$ ]]; then
echo "$block_message"
exit
else
#check if the post code enterd is the same as what the is in the system
if ! [ $post_code = $correct_post_code ]; then
echo "$block_message"
									exit
									else
									if ! [ $cvc = $correct_cvc ]; then
								
echo "$block_message"
																		exit
																						
else
																		echo "wait for confirmation message"
																											sleep 2s
																											echo
																											echo "Your transaction is now complete!" && echo "you can now log out" && echo "Thank you for using RBC card!"
																																				exit
																																				fi
																																				fi
fi
 
#echo "card blocked"
#exit
#fi
#echo "enter your postcode : "
#read -p "postcode : "$T$4$E$5$J$1
#echo "enter your cvc : "
#read -p "cvc : "$1$1$3
#echo "press ok"
#sleep 5s
#echo  "press 1 to make transfer " && echo "press 2 to make payment"
#read -p " type of service": $1 o $2
#echo "wait for confirmation message"
#echo
#echo "Your transaction is now complete!" && echo "you can now log out"
#echo
#echo "Thank you for using RBC card!"

