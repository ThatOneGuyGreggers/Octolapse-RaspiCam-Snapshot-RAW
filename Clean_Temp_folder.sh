#!/bin/sh

#  Clean_Temp_Folder.sh
#  
#
#  Created by Greg  on 11/25/22.
#
$https://www.cyberciti.biz/faq/linux-delete-all-files-in-directory-using-command-line/
#
# Put the arguments sent by Octolapse into variables for easy use
SNAPSHOT_NUMBER=$1
DELAY_SECONDS=$2
DATA_DIRECTORY=$3
SNAPSHOT_DIRECTORY=$4
SNAPSHOT_FILENAME=$5
SNAPSHOT_FULL_PATH=$6

fullpath=/media/pi/PISTORAGE/RaspiStills/temp/

rm $fullpath*
