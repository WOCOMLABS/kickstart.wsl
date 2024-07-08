#!/bin/bash

echo Installing Fonts

NERD_FONTS_VERSION=v3.2.1

declare -A fonts
fonts=(
    ["JetBrainsMono"]="https://github.com/ryanoasis/nerd-fonts/releases/download/${NERD_FONTS_VERSION}/JetBrainsMono.zip"
    ["OpenDyslexic"]="https://github.com/ryanoasis/nerd-fonts/releases/download/${NERD_FONTS_VERSION}/OpenDyslexic.zip"
)

FONT_DIR="${HOME}/.local/share/fonts"

# Ensure the font directory exists
mkdir -p "$FONT_DIR"

# Download, unzip, and install fonts
for font in "${!fonts[@]}"; do
    url="${fonts[$font]}"
    zip_file="$FONT_DIR/${font}.zip"
    dest_dir="$FONT_DIR/${font,,}"

    # Download the font zip file
    curl -fLo "$zip_file" "$url" > /dev/null 2>&1

    # Unzip the font
    unzip -o "$zip_file" -d "$dest_dir" > /dev/null 2>&1

    # Clean up the zip file
    rm "$zip_file"
done

# Refresh the font cache
fc-cache -fv > /dev/null 2>&1

# Verify font installations and export statuses
if fc-list | grep -iq "JetBrainsMono"; then
    export FONT_JETBRAINS_STATUS="👌"
else
    export FONT_JETBRAINS_STATUS="⛔"
fi

if fc-list | grep -iq "OpenDyslexic"; then
    export FONT_OPENDYSLEXIC_STATUS="👌"
else
    export FONT_OPENDYSLEXIC_STATUS="⛔"
fi
