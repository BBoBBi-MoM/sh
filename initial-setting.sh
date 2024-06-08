#!/bin/bash
# initial setting..

sudo -v

if [ $? -eq 0 ]; then
    sudo apt update
    sudo apt upgrade
    cd ~/Downloads
    # install google chrome
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb
    # install vscode
    add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main "
    sudo apt -y install code
else
    echo "Sudo credentials not available. Script terminated."
fi
