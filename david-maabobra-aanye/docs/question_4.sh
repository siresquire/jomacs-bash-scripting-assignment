#!/bin/bash

#Author: David Maabobra Aanye
#Date created: 29/08/2023
#Date modified: 05/09/2023
#Subject:  SCRIPT TO RE-ORGANISE A DIRECTORY

#Make directory and cd into it
mkdir question_4_directory && cd question_4_directory

#Creating files with various extensions
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac dev.log dino.log edochie.jpg efe.log games.avi hunger.mov mapple.jnp naija.jpg nana.mov peace.py pete.png python.py shata.flac sheriff.flac toyin.pdf van.avi wale.mp3 wike.avi wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi 

#Create directory called music
mkdir music

#All files with "mp3" and "flac" extensions to directory "music"
mv *.mp3 && *.flac /home/ubuntu/david-maabobra-aanye/question_4_directory/music

#Create directory called images
mkdir images

#All files with "jpg" and "png" extensions moved to directory "images"
mv *.jpg && *.png /home/ubuntu/david-maabobra-aanye/question_4_directory/images

#Create directory called videos
mkdir videos

#All files with "avi" and "mov" extensions moved to directory "videos"
mv *.avi && *.mov /home/ubuntu/david-maabobra-aanye/question_4_directory/videos

#All files with "log" extension removed
mv *.log

sleep 3s

echo "Directory organisation complete"



