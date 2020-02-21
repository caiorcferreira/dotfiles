#!/usr/bin/env bash

# Like the other install script, this is from Lucas Costa with slight modifications by me
# https://github.com/lucasfcosta/dotfiles/blob/37da8f2861/casks.sh

# This install GUI applications

echo "Installing applications through brew casks..."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed casks
brew cask upgrade

# Time for some action
brew cask install google-chrome
brew cask install spotify
brew cask install iterm2
brew cask install flux
brew cask install notion
brew cask install 1Password
brew cask install foxitreader
brew cask install visual-studio-code