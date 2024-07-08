#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env > /dev/null 2>&1

# Verify Rust installation
if command -v rustc &> /dev/null; then
    export RUST_STATUS="👌"
else
    export RUST_STATUS="⛔"
fi
