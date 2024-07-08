#!/bin/bash

sudo apt install curl zip make gcc ripgrep unzip xclip python3 python3-pip -y

sudo ln -s /usr/bin/python3 /usr/bin/python

# Ensure required commands are in PATH
commands=(curl zip make gcc ripgrep unzip xclip python3 python3-pip)
missing=false

for cmd in "${commands[@]}"; do
  if ! command -v $cmd &> /dev/null; then
    echo "$cmd is missing from PATH"
    missing=true
  fi
done

if $missing; then
  echo "Adding /usr/bin and /usr/local/bin to PATH"
  export PATH=$PATH:/usr/local/bin:/usr/bin
fi