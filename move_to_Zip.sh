#!/bin/sh

#  move_to_Zip.sh
#  
#
#  Created by Greg  on 11/25/22.
#
# https://linuxize.com/post/how-to-zip-files-and-directories-in-linux/
#  https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
#  https://github.com/FormerLurker/Octolapse/tree/cec243c65a979e8bbe90f09fc5aec6d0844d2d3b/octoprint_octolapse/data/scripts/linux
# Put the arguments sent by Octolapse into variables for easy use
SNAPSHOT_NUMBER=$1
DELAY_SECONDS=$2
DATA_DIRECTORY=$3
SNAPSHOT_DIRECTORY=$4
SNAPSHOT_FILENAME=$5
SNAPSHOT_FULL_PATH=$6

#filename="${SNAPSHOT_FILENAME%%.*}"
fullfile=/media/pi/PISTORAGE/RaspiStills/temp/*.jpg
filename=${fullfile##*/}
#extension="${filename##*.}"
#filename="${filename%.*}"
zip -9 /media/pi/PISTORAGE/RaspiStills/$filename.zip /media/pi/PISTORAGE/RaspiStills/temp/*.jpg
