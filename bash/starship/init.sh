#!/bin/bash

curl -sS https://starship.rs/install.sh | sh

# Add Starship configuration to .zshrc if not already present
if ! grep -Fxq 'eval "$(starship init zsh)"' ~/.zshrc
then
    echo 'eval "$(starship init zsh)"' >> ~/.zshrc
fi

# Verify Starship installation
if command -v starship &> /dev/null; then
    export STARSHIP_STATUS="👌"
else
    export STARSHIP_STATUS="⛔"
fi