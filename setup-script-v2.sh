#!/bin/bash

#Ubuntu
sudo xrandr -s 1440x900

#Cleanup
sudo apt-get -f install
sudo apt-get autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean
rm /home/dev/setup-script.sh
