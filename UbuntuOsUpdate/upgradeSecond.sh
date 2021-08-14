#!/bin/bash

#####################################################################
#Script Name	:  upgradeSecond.sh                                 #
#Description	:                                                   #
#Args			:                                                   #
#Author			:                                                   #
#Email			: jeewoo19930315@gmail.com                          #
#Blog			: azabell.github.io                                 #
#####################################################################

apt-get install update-manager-core
do-release-upgrade -d
sudo apt autoremove -y
