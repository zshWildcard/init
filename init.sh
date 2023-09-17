#!/bin/bash

sudo passwd

# update and install

apt update

apt install curl vim ssh git zsh -y

echo "PermitRootLogin yes" > /etc/ssh/sshd_config

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# from concole
echo "Enter the new hostname"
read new_hostname

# into hostname
echo "$new_hostname" > /etc/hostname

# set new hostname
hostname "$new_hostname"

chmod u+x ./ozsh.sh
chmod u+x ./docker.sh

./ozsh.sh
./docker.sh

