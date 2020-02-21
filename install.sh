#!/usr/bin/env bash

# This has been adapted from lucasfcosta/dotfiles
# https://github.com/lucasfcosta/dotfiles/blob/37da8f286196558be56870bff018846b92d5dd69/install.sh

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "install.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		-avh --no-perms ./files/ ~;
	source ~/.zshrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;