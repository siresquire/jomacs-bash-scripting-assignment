#!/bin/bash


#Author : Joseph Sam
#Date Created : August 22 2023
#Date Modified : August 22 2023


read -p "Enter a number (1-7): " day_number

case $day_number in
  1)
    echo "Monday"
    ;;
  2)
    echo "Tuesday"
    ;;
  3)
    echo "Wednesday"
    ;;
  4)
    echo "Thursday"
    ;;
  5)
    echo "Friday"
    ;;
  6)
    echo "Saturday"
    ;;
  7)
    echo "Sunday"
    ;;
  *)
    echo "Invalid input"
    ;;
esac
