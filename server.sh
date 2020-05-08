#!/usr/bin/bash
#This script is for intializing new created instance or droplet

echo "Hey, Devansh "

if [ $(whoami) != "root" ] #Need root privilages
then
	sudo -s

fi
echo "Intializing newly created instance"
apt update
apt install docker.io
apt install build-essential





