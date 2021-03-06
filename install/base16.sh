#!/bin/bash
tput setaf 2; echo "---- Configure base16"

function setup-base16 {
	if [ ! -d $2 ]; then

		tput setaf 2; echo "Let's clone ${1}..."
		git clone $1 $2

		tput setaf 2; echo "Base16 done!"
	else
		tput setaf 1; echo "${1} was already installed!"
	fi
}

function setup-base16-manager {
	if [ ! -d $2 ]; then

		tput setaf 2; echo "Let's clone ${1}..."
		git clone $1 $2

		tput setaf 2; echo "Install.. "

		make install -t $2

		tput setaf 2; echo "Base16 Manager done!"

		base16-manager install chriskempson/base16-shell
		base16-manager install chriskempson/base16-vim
		base16-manager set gruvbox-dark-hard
	else
		tput setaf 1; echo "${1} was already installed!"
	fi
}

setup-base16 git@github.com:chriskempson/base16-shell.git ~/.config/base16-shell
setup-base16-manager git@github.com:base16-manager/base16-manager.git ~/.config/base16-manager

tput setaf 2; echo "---- Done base16"

