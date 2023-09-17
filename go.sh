#!/bin/zsh



sudo wget -c https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
sudo export PATH=$PATH:/usr/local/go/bin
sudo source ~/.profile
go version
