#!/bin/bash

echo Installing Rust 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y > /dev/null 2>&1
source $HOME/.cargo/env > /dev/null 2>&1

# Verify Rust installation
if command -v rustc &> /dev/null; then
    export RUST_STATUS="👌"
else
    export RUST_STATUS="⛔"
fi
