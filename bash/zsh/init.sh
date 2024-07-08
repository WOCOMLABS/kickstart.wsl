#!/bin/bash

sudo apt install zsh -y

# Set Zsh as the default shell
chsh -s $(which zsh)

# Verify Zsh installation
if command -v zsh &> /dev/null; then
    export ZSH_STATUS="󰗡"
else
    export ZSH_STATUS=""
fi
