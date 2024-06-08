#!/bin/bash
# install cuda toolkit
sudo -v

if [ $? -eq 0 ]; then
    cd ~/Downloads
    wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
    sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
    wget https://developer.download.nvidia.com/compute/cuda/12.3.1/local_installers/cuda-repo-ubuntu2204-12-3-local_12.3.1-545.23.08-1_amd64.deb
    rm -rf cuda-repo-ubuntu2204-12-3-local_12.3.1-545.23.08-1_amd64.deb
    sudo dpkg -i cuda-repo-ubuntu2204-12-3-local_12.3.1-545.23.08-1_amd64.deb
    sudo cp /var/cuda-repo-ubuntu2204-12-3-local/cuda-*-keyring.gpg /usr/share/keyrings/
    sudo apt update
    sudo apt install cuda-toolkit-12-3 -y
    sudo apt install nvidia-kernel-open-545 -y
    sudo apt install cuda-drivers-545 -y
else
    echo "Sudo credentials not available. Script terminated."
fi