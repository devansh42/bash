#!/usr/bin/bash
#This script is for intializing new created instance or droplet

echo "Hey, Devansh "

if [ $(whoami) != "root" ] #Need root privilages
then
	sudo -s

fi
echo "Intializing newly created instance"
apt update
apt install -y docker.io build-essential python3-pip
pip3 install docker-compose




