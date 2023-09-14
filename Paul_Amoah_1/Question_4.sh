 #!/bin/bash

 # Author:Paul Amoah
 # Date Created:17th august 2023
 # Date Modified:17th august 2023


b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac
dev.log dino.log edochie.jpg efe.log games.avi hunger.mov
mapple.jnp naija.jpg nana.mov peace.py pete.png python.py
shata.flac sheriff.flac toyin.pdf van.avi wale.mp3 wike.avi
wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi

music=david.flac black.mp3 shatta.flac sheriff.flac wale.mp3 zanku.mp wiz.mp33
images=edochie.jpg naija.jpg pete.png yul.jpg
videos=bubu.avi games.avi van.avi wike.avi ghan.avi dame.mov nana.mov




# Create the necessary directories
mkdir -p  images  videos music
echo

# Move all files with .mp3 and flac extensions to
 mv  * mp3  music/
 mv  * flac music/
echo

# Move all files with jpg and png extensions to
 mv *jpg  images/
 mv * png images/
echo

# Move all files with .avi and mov extensions to
 mv  * avi vidoes/
 mv  * mov videos/
echo

# Remove all files with log extension
rm *log






























