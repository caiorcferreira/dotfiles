# This script installs other programs that are not managed
# by brew or that didn't fit into any of the other scripts

# This install Oh My ZSH framework
if [ -d "$HOME/.oh-my-zsh" ]
then
    echo "Oh my ZSH is already installed, skipping..."
else
    echo "installing oh my zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# This install Oh My ZSH plugins
if [ -d "$ZSH_CUSTOM/plugins" ]
then
    echo "Oh my ZSH plugin autosuggestion is already installed, skipping..."
else
    echo "installing Oh my ZSH plugin autosuggestion"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ -d "$ZSH_CUSTOM/plugins" ]
then
    echo "Oh my ZSH plugin syntax highlight is already installed, skipping..."
else
    echo "installing Oh my ZSH plugin syntax highlight"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# Install Powerline Fonts
if [ -d "$ZSH/fonts" ]
then
    echo "Powerline fonts already installed"
else
    mkdir -p "$ZSH/fonts"
    git clone https://github.com/powerline/fonts.git --depth=1 "$ZSH/fonts"
    chmod +x $(echo "$ZSH/fonts/install.sh")
    sh -c "$(cat $ZSH/fonts/install.sh)"
fi

# This installs the spaceship theme for zsh
# https://github.com/denysdovhan/spaceship-prompt
if [ -d "$ZSH/custom/themes/spaceship-prompt" ]
then
    echo "spaceship-prompt is already installed, skipping..."
else
    echo "installing spaceship-prompt..."
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH/custom/themes/spaceship-prompt"
    ln -s "$ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/custom/themes/spaceship.zsh-theme"
fi

if [ -d "$HOME/.tmux/plugins/tpm" ]
then
    echo "tmux tpm is already installed, skipping..."
else
    echo "installing tmux tpm..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
