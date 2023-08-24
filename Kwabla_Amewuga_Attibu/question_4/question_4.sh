#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created:20th August, 2023 
#Date Modified:



# Create directories if they don't exist
mkdir -p music images videos



# Move files to appropriate directories
mv *.mp3 *.flac music 2>/dev/null
mv *.jpg *.png images 2>/dev/null
mv *.avi *.mov videos 2>/dev/null



# Remove log files
rm -f *.log

echo "Directory has been organized as follows:"
echo "- 'music' directory contains all music files."
echo "- 'images' directory contains all image files."
echo "- 'videos' directory contains all video files."
echo "- Log files have been removed."

