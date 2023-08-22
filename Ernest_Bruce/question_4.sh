#! /bin/bash
# Author: Ernest Bruce
# Created: 20/08/2023
# Discription: Write a Bash script that organizes a given directory. I will first create different files.




#Create files into the directory in use.

file_names=("b2.sh" "bashass.sh" "bash.sh" "black.mp3" "bubu.avi" "dame.mov" "david.flac" "dev.log" "dino.log" "edochie.jpg" "efe.log" "games.avi" "hunger.mov" "mapple.jnp" "naija.jpg" "nana.mov" "peace.py" "pete.png" "python.py" "shata.flac" "sheriff.flac" "toyin.pdf" "van.avi" "wale.mp3" "wike.avi" "wiz.mp3" "yul.jpg" "yvonne.txt" "zanku.mp3" "ghana.avi")


for filename in "${file_names[@]}"; do
        touch "$filename"
        echo "Created $filename"
done

#Create directories

directory_names=("music" "images" "videos")

for directory in "${directory_names[@]}"; do
       mkdir "$directory"
       echo Created "$directory"
done       

#Move music files to music directory

source_directory="$PWD"
new_directory="music"

destination_directory="$source_directory/$new_directory"

for file in "$source_directory"/*.mp3 "$source_directory"/*.flac; do
   if [ -f "$file" ]; then
     echo "Moving $file to $destination_directory"
     mv "$file" "$destination_directory"
   fi
done

echo "All .mp3 and .flac files have been moved to $destination_directory"


#Move images to images directory


source_directory="$PWD"
new_directory="images"

destination_directory="$source_directory/$new_directory"

for file in "$source_directory"/*.jpg "$source_directory"/*.png; do
   if [ -f "$file" ]; then
     echo "Moving $file to $destination_directory"
     mv "$file" "$destination_directory"
   fi
done

echo "All .jpg and .png files have been moved to $destination_directory"


#Move videos to videos directory


source_directory="$PWD"
new_directory="videos"

destination_directory="$source_directory/$new_directory"

for file in "$source_directory"/*.avi "$source_directory"/*.mov; do
   if [ -f "$file" ]; then
     echo "Moving $file to $destination_directory"
     mv "$file" "$destination_directory"
   fi
done

echo "All .avi and .mov files have been moved to $destination_directory"



#Remove all log files


source_directory="$PWD"



for file in "$source_directory"/*.log ; do
   if [ -f "$file" ]; then
     echo "Deleting $file from $source_directory"
     rm "$file" 
   fi
done

echo "All .log files have been deleted from $source_directory"



