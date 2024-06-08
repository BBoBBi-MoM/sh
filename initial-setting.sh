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
    wget -o vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
    sudo apt install ./vscode.deb
    rm vscode.deb google-chrome-stable_current_amd64.deb
else
    echo "Sudo credentials not available. Script terminated."
fi
