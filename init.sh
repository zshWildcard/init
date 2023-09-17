#!/bin/bash
# base config and starter
echo "----------------------------------input the new root password------------------------------------------"
sudo passwd

# apt update and install base 
sudo apt update
sudo apt install curl vim ssh git zsh apt-transport-https ca-certificates gnupg-agent software-properties-common -y

# change hostname from concole
echo "Enter the new hostname"
read new_hostname
# into hostname
echo "$new_hostname" > /etc/hostname
# set new hostname
hostname "$new_hostname"

chmod u+x ./ssh.sh
chmod u+x ./ozsh.sh
chmod u+x ./docker.sh
chmod u+x ./end.sh


# you can adjust the order
./ssh.sh
./docker.sh
./ozsh.sh
./end.sh

