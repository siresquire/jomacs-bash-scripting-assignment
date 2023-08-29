#!/bin/bash

#Author : Joseph Sam
#Date Created : August 21 2023
#Date Modified : August 21 2023


#make directories
mkdir new_music11 new_images11 new_videos11

#create files
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac dev.log dino.log edochie.jpg efe.log games.avi hunger.mov mapple.jnp naija.jpg nana.mov peace.py pete.png python.py shata.flac sheriff.flac toyin.pdf van.avi wale.mp3 wike.avi wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi


#audio files
mv *.flac *.mp3 new_music11

#video files
mv *.jpg *.png new_images11

#video files
mv *.avi *.mov new_videos11

#log files
rm *.log


echo "File sorting done"

