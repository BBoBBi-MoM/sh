#!/bin/bash
# install mojo
sudo -v

if [ $? -eq 0 ]; then
    # sudo apt update -y
    # sudo apt upgrade -y
    curl -s https://get.modular.com | sh -
    conda create -n mojo python=3.10 -y && conda activate base && conda activate mojo
    modular install mojo
    MOJO_PATH=$(modular config mojo.path) \
        && BASHRC=$( [ -f "$HOME/.bash_profile" ] && echo "$HOME/.bash_profile" || echo "$HOME/.bashrc" ) \
        && echo 'export MODULAR_HOME="'$HOME'/.modular"' >> "$BASHRC" \
        && echo 'export PATH="'$MOJO_PATH'/bin:$PATH"' >> "$BASHRC" \
        && source "$BASHRC"
    
else
    echo "Sudo credentials not available. Script terminated."
fi
