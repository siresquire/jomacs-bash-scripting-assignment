#!/bin/bash

#Author: David Maabobra Aanye
#Date created: 29/08/2023
#Subject:  SCRIPT TO RE-ORGANISE A DIRECTORY

#Make directory and cd into it
echo "Creating a directory...."

sleep 4s

mkdir question_4_directory

echo "directory created"
sleep 4s

#Enter the directory
cd question_4_directory
echo "cd;ed into the directory"
sleep 6s

#Creating files with various extensions
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac dev.log dino.log edochie.jpg efe.log games.avi hunger.mov mapple.jnp naija.jpg nana.mov peace.py pete.png python.py shata.flac sheriff.flac toyin.pdf van.avi wale.mp3 wike.avi wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi 

sleep 5s

#Create three directories
mkdir music images videos
echo "Created "music", "images" and "vidoes" directories"
sleep 4s

#All files with ".mp3" and ".flac" extensions moved to "music"
for file in *.mp3 *.flac; do
	if [ -e "$file" ]; then
		mv "$file" music/
        fi
done

#All files with ".jpg" and ".png" extensions moved to "images"
for file
       	in *.jpg *.png; do
	if [ -e "$file" ]; then
		mv "$file" images/
	fi
done
	
#All files with ".avi" and ".mov" extensions moved to "videos"

for file in *.avi *.mov; do
	if [ -e "$file" ]; then
		mv "$file" videos/
	fi
done
#All files with ".log" extensions removed
rm -rf *.log

sleep 4s

echo " Files moved into music, images and videos directories"

sleep 4s

echo "Directory organisation complete"



