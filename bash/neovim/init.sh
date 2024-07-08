#!/bin/bash

sudo apt install neovim -y

# Verify Neovim installation
if command -v nvim &> /dev/null; then
    export NEOVIM_STATUS="👌"
else
    export NEOVIM_STATUS="⛔"
fi

# Install additional libraries for Lua build
sudo apt install libreadline-dev -y


