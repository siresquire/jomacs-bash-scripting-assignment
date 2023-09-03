#!/bin/bash
  
# Author: Enoch Gyampoh
# Date Created: 24/Aug/2023

# Creating files
touch tb2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac 
touch dev.log dino.log edochie.jpg efe.log games.avi hunger.mov
touch mapple.jnp naija.jpg nana.mov peace.py pete.png python.py
touch shata.flac sheriff.flac toyin.pdf van.avi wale.mp3 wike.avi
touch wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi 

# Creating directories
echo "Please wait while we organise your directory ..."
sleep 3

mkdir -p videos music images 

# Moving to Music Directory
for files in *.mp3 *.flac; do
    if [[ -e "$files" ]]; then
        mv "$files" music/
    fi
done

# Moving to Images Directory
for files in *.jpg *.png; do
    if [[ -e "$files" ]]; then
        mv "$files" images/
    fi
done

# Moving to Videos Directory
for files in *.mov *.avi; do
    if [[ -e "$files" ]]; then
        mv "$files" videos/
    fi
done

# Removing All Log Files
rm -f *.log
echo "All directory has been organised successfully!"
