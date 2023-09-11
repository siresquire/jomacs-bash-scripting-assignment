
#!/bin/bash

#Author: Paul Amoah
#Date Created: 17th August 2023
#Date Modiefied: !7th August 2023



echo "To make your first transaction at Udemy.com, please enter your card details."
echo

read -p "Enter the first 12 digits of your 16-digit card number: " card_number
card_number+="4412" # Adding the last 4 digits
echo

read -p "Enter your CVC: " cvc
echo


read -p "Enter your postcode: " post_code
echo

echo "please wait while your Transaction is processing"
sleep 5s
echo

echo  "Transaction declined. Your card has been blocked. please contact RBC customer support for assistance"
echo

if [ $card_number -eq 16 ] ; then
	echo " Transaction successful! Enjoy your purchase at Udemy.com."
elif [ $cvc -eq " 1957"] ; then 
	echo "Transaction successful! Enjoy your purchase at Udemy.com."
elif [ $post_code -eq "T4E5J1" ] ; then
	echo "Transaction successful! Enjoy your Purchase at Udemy.com."
else
	echo "Transaction declined. Your card has been blocked. Please contact BC customer support for assistance."
	
 fi





































