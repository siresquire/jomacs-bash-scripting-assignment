#!/bin/bash

#Author: Fuseini Tia Iddrisu
#Date created: September 14,2023

Kofi_credit_limit="2000"
transaction_amount="1000"
if [ $transaction_amount -le 2000 ]
then
	echo "transaction approved. Your transaction was successfully."
else
	echo "transaction declined. Above credit limit."
fi
