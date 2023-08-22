#!/bin/bash

# Create files for the work
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac
touch dev.log dino.log edochie.jpg efe.log games.avi hunger.mov
touch mapple.jnp naija.jpg nana.mov peace.py pete.png python.py
touch shata.flac sheriff.flac toyin.pdf van.avi wale.mp3
touch wike.avi wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi

# Create directories if they don't exist
mkdir -p music images videos

# Move music files
for file in *.mp3 *.flac; do
    if [ -e "$file" ]; then
        mv "$file" music/
    fi
done

# Move image files
for file in *.jpg *.png; do
    if [ -e "$file" ]; then
        mv "$file" images/
    fi
done

# Move video files
for file in *.avi *.mov; do
    if [ -e "$file" ]; then
        mv "$file" videos/
    fi
done

# Remove log files
rm -f *.log

# Print a message indicating the organization is complete
echo "Directory organized."
