#!/usr/bin/env bash

# Like the other install script, this is from Lucas Costa with slight modifications by me
# https://github.com/lucasfcosta/dotfiles/blob/37da8f2861/casks.sh

# This install GUI applications

echo "Installing applications through brew casks..."

# Make sure we’re using the latest Homebrew.
brew update

# Time for some action
brew install --cask spotify
brew install --cask iterm2
brew install --cask notion
brew install --cask foxitreader
brew install --cask visual-studio-code
brew install --cask shottr
brew install --cask raycast
brew install --cask dash