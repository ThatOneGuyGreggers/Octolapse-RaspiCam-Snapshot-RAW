#!/bin/sh

#  take-snapshot.sh
#  
#
#  Created by Greg  on 11/24/22.
# https://github.com/FormerLurker/Octolapse/wiki/V0.4---Configuring-a-DSLR
# https://alfmikael.no/2021/05/07/how-to-get-a-4k-timelapse-with-raspi-hd-camera-on-octoprint/

# Put the arguments sent by Octolapse into variables for easy use
SNAPSHOT_NUMBER=$1
DELAY_SECONDS=$2
DATA_DIRECTORY=$3
SNAPSHOT_DIRECTORY=$4
SNAPSHOT_FILENAME=$5
SNAPSHOT_FULL_PATH=$6

# Check to see if the snapshot directory exists
if [ ! -d "${SNAPSHOT_DIRECTORY}" ];
then
  echo "Creating directory: ${SNAPSHOT_DIRECTORY}"
  mkdir -p "${SNAPSHOT_DIRECTORY}"
fi

# IMPORTANT - You must add gphoto2 to your /etc/sudoers file in order to execute gphoto2 without sudo
# otherwise the following line will fail.
#sudo gphoto2 --auto-detect --capture-image-and-download --filename "${SNAPSHOT_FULL_PATH}"

raspistill --timeout 1 -n -q 100 -r -w 2592 -h 1944 --shutter 250000 -o "${SNAPSHOT_FULL_PATH}"
raspistill --timeout 2 -n -q 100 -r -w 2592 -h 1944 --shutter 250000 -o /media/pi/PISTORAGE/Raspistills/temp/"${SNAPSHOT_FILENAME}"

if [ ! -f "${SNAPSHOT_FULL_PATH}" ];
then
  echo "The snapshot was not found in the expected directory: '${SNAPSHOT_FULL_PATH}'." >&2
  exit 1
fi
