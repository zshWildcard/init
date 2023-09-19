#!/bin/bash
# base config and starter
echo "----------------------------------input the new root password------------------------------------------"
sudo passwd

# apt update and install base 
sudo apt update
sudo apt install curl vim ssh git zsh apt-transport-https ca-certificates gnupg-agent software-properties-common net-tools ethtool -y

# change hostname from concole
echo "Enter the new hostname"
read new_hostname
echo "The new name is"
echo "$new_hostname"
# into hostname
sudo echo "$new_hostname" > /etc/hostname
# set new hostname
sudo hostname "$new_hostname"

sudo chmod u+x ./*.sh


# you can adjust the order
sudo ./ssh.sh
sudo ./docker.sh
sudo ./ozsh.sh
sudo ./go.sh
sudo ./jdk.sh
sudo ./end.sh

