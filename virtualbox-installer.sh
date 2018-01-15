#!/usr/bin/env bash

sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get update
# TODO install last version
sudo apt-get -y install virtualbox-5.2
sudo usermod -aG vboxusers "$(whoami)"
