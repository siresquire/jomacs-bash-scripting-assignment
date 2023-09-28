#!/bin/bash

#Author: Fuseini Tia Iddrisu
#Date created: September 14, 2023

Kofi_pin="1957"
card_number="1234567890124412"
passcode="T4E5J1"
cvc="113"
echo "Welcome to Udemy.com"
echo "Please enter 16-digits card number: "
echo "Check the entered card number matches $card_number."
if [ $card_number -eq 1234567890124412 ] 
then
	echo "Please enter your pin: "
	echo "Check the entered pin matches $Kofi_pin."
if [ $Kofi_pin -eq 1957 ]
then
	echo "Please enter you passcode: "
	echo "Check the entered passcode matches $passcode."
if [ $passcode -eq T4E5J1 ]
then
	echo "Please enter your cvc: "
	echo "Check the entered cvc matches $cvc."
if [ $cvc -eq 113 ]
then
	echo "Transaction successfully. Thank you for shopping at Udemy.com."
else
	echo "Transaction declined. Incorrect pin. Your card has been blocked."
