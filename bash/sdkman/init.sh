#!/bin/bash

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Verify SDKMAN installation
if [ -d "$HOME/.sdkman" ]; then
    export SDKMAN_STATUS="󰗡"
else
    export SDKMAN_STATUS=""
fi

sdk install java 22.0.1-zulu
sdk install maven
sdk install gradle
sdk install kotlin
