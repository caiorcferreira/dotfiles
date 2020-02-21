#!/usr/bin/env bash

# Like the other install script, this is from Lucas Costa with slight modifications by me
# https://github.com/lucasfcosta/dotfiles/blob/37da8f2861/brew.sh

echo "Installing brew formulae..."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install general tools
brew install coreutils 
brew install automake 
brew install autoconf 
brew install openssl
brew install libyaml
brew install readline 
brew install libxslt 
brew install libtool 
brew install unixodbc
brew install unzip 
brew install findutils
brew install cmake
brew install gnu-sed

# This is needed for fzf to know how to ignore files listed in .gitignore
# and know how to show hidden files
# It is also a good CLI tool
brew install ag

# Install more recent versions of some macOS tools.
brew install grep
brew install reattach-to-user-namespace
brew install tmux
brew install curl
brew install jq

# Install cmake

# Dev utilities
brew install git
brew install docker
brew install docker-compose
brew install docker-machine
brew install kubectl
brew install helm
brew install asdf

# Setup Cask
brew install cask

# Remove outdated versions from the cellar.
brew cleanup
