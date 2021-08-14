#!/bin/bash

#####################################################################
#Script Name	: UpgradeFirst.sh                                   #
#Description	:                                                   #
#Args			:                                                   #
#Author			:                                                   #
#Email			: jeewoo19930315@gmail.com                          #
#Blog			: azabell.github.io                                 #
#####################################################################

sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo reboot
