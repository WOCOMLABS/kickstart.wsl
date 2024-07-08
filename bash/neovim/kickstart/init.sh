rm -rf ~/.config/share/nvim

# Add alias to .zshrc if not already present
if ! grep -Fxq 'alias vim="nvim"' ~/.zshrc
then
    echo 'alias vim="nvim"' >> ~/.zshrc
fi

# Install Kickstart.nvim
if [ ! -d "$HOME/.config/nvim" ]; then
#    git clone https://github.com/nvim-lua/kickstart.nvim ~/.config/nvim
    git clone https://github.com/WOCOMLABS/kickstart.nvim ~/.config/nvim
fi

# Verify Kickstart.nvim installation
if [ -f "$HOME/.config/nvim/init.lua" ]; then
    export KICKSTART_STATUS="󰗡"
else
    export KICKSTART_STATUS=""
fi