#!/bin/bash
#Author: Paul Amoah
#Date Created: 17th august 2023
#Date modified: 17th august 2023


name=$1
group=$2
password=$3

sudo adduser --ingroup "$group" --disabled-password --gecos "" "$name"
echo "$name:$password" | sudo chpasswd





