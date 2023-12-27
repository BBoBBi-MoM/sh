#!/bin/bash
# python
sudo -v

if [ $? -eq 0 ]; then
    sudo apt update
    sudo apt install python3-dev -y
    echo "alias python=python3" >> ~/.bashrc
    source ~/.bashrc
    mkdir -p ~/miniconda3
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm -rf ~/miniconda3/miniconda.sh
    ~/miniconda3/bin/conda init bash
    source ~/.bashrc 
else
    echo "Sudo credentials not available. Script terminated."
fi
