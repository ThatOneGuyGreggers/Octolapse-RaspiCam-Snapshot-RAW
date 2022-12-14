# Octolapse-RaspiCam-Snapshot-RAW
my script to trigger the RaspiCam to take JPEG+RAW photos during octolapse. 2x cameras have to be used.

Reference Material:

* https://github.com/FormerLurker/Octolapse/wiki/V0.4---Configuring-a-DSLR
* https://alfmikael.no/2021/05/07/how-to-get-a-4k-timelapse-with-raspi-hd-camera-on-octoprint/

setup:
* Raspiberry Pi 4
* USB Webcam
* Arducam 5MP OV5647 1080P
* USB 3.0 thumb drive plugged in to Raspiberry PI 4 USB 3.0 port

my blog posts on this idea:
* https://www.greggerslab.com/2022/11/rabbit-holes-and-lighting.html
* https://www.greggerslab.com/2022/12/octolapse-raw-settings.html

Prerequisites:
1. install Zip https://www.tecmint.com/install-zip-and-unzip-in-linux/

Setup:
1. install Octipi and setup on Rasperry Pi
2. install plugin OctoLapse
3. Go into OctoLapse settng and edit the Raspberry Pi Camera settings
4. Change "Camera Type" to "External Camera - Script"
5. Copy scripts to /home/pi/scripts
6. For the "Snapshot Acquire Script" field enter in /home/pi/scripts/take-snapshot.sh
7. For the "Before Print Start Script" field enter in /home/pi/scripts/Clean_temp_folder.sh
8. For the "After Print End Script" field enter in /home/pi/scripts/move_to_Zip.sh

Known Issues:
1. Before and After Scripts work when clicking test but do not want to run when attempting to run an OctoLapse Print.
2. Print Job name does not automatically pass to the ZIP file creation.
3. Does not automatically render TimeLapse but this is by design due to wanting a series of Photos with RAW data to edit.
