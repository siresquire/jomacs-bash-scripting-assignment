#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23

# Create the recommended files
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac dev.log dino.log edochie.jpg efe.log games.avi hunger.mov mapple.jnp naija.jpg nana.mov peace.py pete.png python.py shata.flac sheriff.flac toyin.pdf van.avi wale.mp3 wike.avi wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi

# Create directories for group of files
mkdir Music 
mkdir Images
mkdir Videos

# Uses case inside for loop to perform action of files one after the other
for file in * 
do
	extension=${file##*.}

	case $extension in
		mp3|flac)
		mv $file Music
		;;
		jpg|png)
		mv $file Images	
		;;
	        avi|mov)
		mv $file Videos
		;;
	        log)
		rm $file
		;;
	esac
done

		
