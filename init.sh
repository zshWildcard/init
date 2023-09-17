#!/bin/bash
# base config and starter
echo "----------------------------------input the new root password------------------------------------------"
sudo passwd

# apt update and install base 
apt update
apt install curl vim ssh git zsh apt-transport-https ca-certificates gnupg-agent software-properties-common -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# change hostname from concole
echo "Enter the new hostname"
read new_hostname
# into hostname
echo "$new_hostname" > /etc/hostname
# set new hostname
hostname "$new_hostname"

chmod u+x ./*.sh

# you can adjust the order
./ssh.sh
./ozsh.sh
./docker.sh
./end.sh

