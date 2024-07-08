#!/bin/bash

echo Installing Neovim

sudo apt install neovim -y > /dev/null 2>&1

# Verify Neovim installation
if command -v nvim &> /dev/null; then
    export NEOVIM_STATUS="👌"
else
    export NEOVIM_STATUS="⛔"
fi

# Install additional libraries for Lua build
sudo apt install libreadline-dev -y > /dev/null 2>&1


