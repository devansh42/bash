#!/bin/bash
#Script to make a new user and setuping its ssh credentials
if [ $(whoami) != "root" ]; then
    echo "Need Root Permission"
    exit 1
fi

read -p "Enter username: " name

group='sudo'
if [ -n $(uname -a | grep Ubuntu) ]; then
    group="wheel" #for fedora
fi

useradd $name
usermod -aG $group $name #Adding in sudo group
homedir=/home/$name
sshdir=$homedir/.ssh
mkdir $sshdir
ssh-keygen -b 4096 -t rsa -f "$sshdir/id_$name"
ssh-keygen -y -f $sshdir/id_$name > $sshdir/authorized_key
echo "Here is the Private key"
cat $sshdir/id_$name 
chown -R $name:$name $sshdir