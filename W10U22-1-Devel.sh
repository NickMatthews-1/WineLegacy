#!/bin/bash

#This enables 32bit architecture
sudo dpkg --add-architecture i386

#Downloads and adds the repository key
sudo mkdir -pm755 /etc/apt/keyrings

sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

#This downloads the WineHQ sources file
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/kinetic/winehq-kinetic.sources

#This updates the package information
sudo apt update

#This upgrades the packages
sudo apt upgrade

#This installs wine version 10
sudo apt install --install-recommends winehq-devel

#Subject to GPLv3 License Copyright Nicolas Matthews 2024
