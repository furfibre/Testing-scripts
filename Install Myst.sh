#!/bin/bash

echo "Starting install script for Ubuntu/Debian Mystnodes"

sleep 5

#Adding the repository for the Node
sudo add-apt-repository ppa:mysteriumnetwork/node

#Some VPS/Distros have a few issues and need the below key to work
sudo gpg --keyserver keyserver.ubuntu.com --recv-keys ECCB6A56B22C536D
sudo gpg -a --export ECCB6A56B22C536D | sudo apt-key add -

#Update packages
sudo apt-get update && sudo apt-get upgrade

#Installing the files
sudo apt install myst -y

#Checking the status of the server
sudo systemctl status mysterium-node.service