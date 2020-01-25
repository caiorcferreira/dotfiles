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


# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
brew install cmake
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# This is needed for fzf to know how to ignore files listed in .gitignore
# and know how to show hidden files
# It is also a good CLI tool
brew install ag

# This is needed for python support on Neovim for YouCompleteMe
# Please see https://github.com/neovim/neovim/issues/1315
brew install python@3
pip3 install --user --upgrade neovim
pip3 install --user --upgrade pynvim

# Install more recent versions of some macOS tools.
brew install neovim
brew install grep

# Install other useful binaries.
brew install git
brew install reattach-to-user-namespace
brew install tmux
brew install curl

# Install cmake

# Vim ecosystem
brew install vim
brew install neovim
go get -u github.com/stamblerre/gocode
nvim +PlugClean! +qall
nvim +silent +PlugInstall +qall

# Dev utilities
brew install git
brew install docker
brew install docker-compose
brew install docker-machine

# Setup Cask
brew install cask

# Remove outdated versions from the cellar.
brew cleanup
