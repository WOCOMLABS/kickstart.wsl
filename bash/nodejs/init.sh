#!/bin/bash

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Ensure NVM is sourced in Zsh sessions
if ! grep -Fxq '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' ~/.zshrc; then
    echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
    echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.zshrc
fi

# Install Node.js
nvm install 22

# Verify Node.js and NPM installation
if command -v node &> /dev/null; then
    export NODE_STATUS="👌"
else
    export NODE_STATUS="⛔"
fi

if command -v npm &> /dev/null; then
    export NPM_STATUS="👌"
else
    export NPM_STATUS="⛔"
fi


npm install -g firebase-tools
