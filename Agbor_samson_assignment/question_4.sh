#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:27/8/2023
# Date Modified:
# Description:A Bash script that organizes a given directory.

# Create the various files
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac dev.log dino.log edochie.jpg efe.log games.avi hunger.mov mapple.jnp naija.jpg nana.mov peace.py pete.png python.py shata.flac sheriff.flac toyin.pdf van.avi wale.mp3 wike.avi wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi
echo "Files created successfully" 

# Create directories for music, images, and videos
 mkdir -p music images videos

 # Move music files to the "music" directory
 mv *.mp3 *.flac music 2>/dev/null

 # Move image files to the "images" directory
 mv *.jpg *.png images 2>/dev/null

 # Move video files to the "videos" directory
 mv *.avi *.mov videos 2>/dev/null

 # Remove log files
 rm -f *.log

 echo "Directory organized successfully."

 exit 0


