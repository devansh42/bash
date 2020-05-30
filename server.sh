#!/bin/bash
#This script is for intializing new created instance or droplet


initServer() {

        echo "Intializing newly created instance"
        apt update
        apt install -y docker.io build-essential python3-pip
        pip3 install docker-compose

}


echo "Hey, Devansh "

if [ $(whoami) != "root" ]; then #Need root privilages
	sudo initServer
else
	 initServer
fi

