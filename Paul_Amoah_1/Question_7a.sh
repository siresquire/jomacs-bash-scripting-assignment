#!/bin/bash
#Author: Paul Amoah
#Date Created: 17th august 2023
#Date modified: 17th august 2023


dir=$1

if [ -d "$dir" ]; then
	  du -sh "$dir"
  else
      echo "Directory not found!"
fi







