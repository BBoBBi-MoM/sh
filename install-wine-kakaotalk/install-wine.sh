#!/bin/bash
# adjust dock
sudo -v

if [ $? -eq 0 ]; then
    sudo dpkg --add-architecture i386
    sudo apt install wget -y
    sudo mkdir -pm755 /etc/apt/keyrings
    sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
    sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
    sudo apt update
    sudo apt install --install-recommends winehq-stable -y
    winecfg
 
else
    echo "Sudo credentials not available. Script terminated."
fi
