#!/bin/bash

# Author: Sokpe Desmond
# Created on: 22/08/23

# Create necessary files
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac
dev.log dino.log edochie.jpg efe.log games.avi hunger.mov
mapple.jnp naija.jpg nana.mov peace.py pete.png pyython.pyy
shata.flac sheriff.flac toyyin.pdf van.avi wale.mp3 wike.avi
wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi

# create necessary directories
mkdir -p music images videos


# Move files to appropriate directories
mv *.mp3 *.flac music/
mv *.jpg *.png images/
mv *.avi *.mov videos/

# Remove log files
rm *.log

echo "Directory has been organized."
