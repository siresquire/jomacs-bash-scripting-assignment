#!/bin/bash
#Author: Paul Amoah
#Date Created: 17th august 2023
#Date modified: 17th august 2023


echo "Enter a number from 1 to 7: "
read number

case $number in
1)
  echo "Sunday"
 ;;
2 )
  echo "Monday"
 ;;
 3)
   echo "Tuesday"
 ;;
4)
  echo "Wednesday"
 ;;
5)
   echo "Thursday"
    ;;
  6)
    echo "Friday"
    ;;
  7)
    echo "Saturday"
    ;;
  *)
    echo "Error: Invalid input!"
    ;;
esac








