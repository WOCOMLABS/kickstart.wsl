#!/bin/bash

echo Installing Sdkman

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Verify SDKMAN installation
if [ -d "$HOME/.sdkman" ]; then
    export SDKMAN_STATUS="👌"
else
    export SDKMAN_STATUS="⛔"
fi

echo Installing Java 22 zulu
sdk install java 22.0.1-zulu > /dev/null 2>&1
echo Installing Maven
sdk install maven > /dev/null 2>&1
echo Installing gradle
sdk install gradle > /dev/null 2>&1
echo Installing Kotlin
sdk install kotlin > /dev/null 2>&1
