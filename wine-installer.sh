#!/usr/bin/env bash

sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository -y https://dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update

if [ "$#" -eq 0 ] # Default value
then
    version='stable'
else
    case $1 in
        -d | --devel )
            version='devel'
            ;;
        -s | --stable )
            version='stable'
            ;;
        -g | --staging )
            version='staging'
            ;;
        * )
            echo 'wrong param'
            exec 1
    esac
fi
echo ${version}
sudo apt-get install -y --install-recommends winehq-${version}
