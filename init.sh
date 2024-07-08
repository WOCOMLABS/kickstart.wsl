#!/bin/bash

# Update and upgrade packages
sudo apt update
sudo apt upgrade -y


# ===================================== [ COMMON ]
chmod u+x bash/common/init.sh
./bash/common/init.sh
# ====================================== [ FONTS ]
chmod u+x bash/fonts/init.sh
./bash/fonts/init.sh
# ======================================== [ ZSH ]
chmod u+x bash/zsh/init.sh
./bash/zsh/init.sh
# ===================================== [ NEOVIM ]
chmod u+x bash/neovim/init.sh
./bash/neovim/init.sh
# =========================== [ NEOVIM KICKSTART ]
chmod u+x bash/neovim/kickstart/init.sh
./bash/neovim/kickstart/init.sh
# =================================== [ STARSHIP ]
chmod u+x bash/starship/init.sh
./bash/starship/init.sh
# ================================== [ JVM STUFF ]
chmod u+x bash/sdkman/init.sh
./bash/sdkman/init.sh
# ======================================= [ RUST ]
chmod u+x bash/rust/init.sh
./bash/rust/init.sh
# ===================================== [ NODEJS ]
chmod u+x bash/nodejs/init.sh
./bash/nodejs/init.sh
# ============================ [ Display Results ]
echo
echo "Installation Summary:"
echo "----------------------------------"
printf "%-25s %s\n" "Component" "Status"
echo "----------------------------------"
printf "%-25s %s\n" "JetBrains Mono Font" "$FONT_JETBRAINS_STATUS"
printf "%-25s %s\n" "OpenDyslexic Font" "$FONT_OPENDYSLEXIC_STATUS"
printf "%-25s %s\n" "Zsh" "$ZSH_STATUS"
printf "%-25s %s\n" "Starship Prompt" "$STARSHIP_STATUS"
printf "%-25s %s\n" "SDKMAN" "$SDKMAN_STATUS"
printf "%-25s %s\n" "Neovim" "$NEOVIM_STATUS"
printf "%-25s %s\n" "Neovim Kickstarter" "$KICKSTART_STATUS"
printf "%-25s %s\n" "Rust" "$RUST_STATUS"
printf "%-25s %s\n" "NPM" "$NPM_STATUS"
printf "%-25s %s\n" "Node js" "$NODE_STATUS"
echo "----------------------------------"

