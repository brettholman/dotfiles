#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

#git pull origin master;

function doIt() {
    ls -d .?* | grep -v '\.\.' | grep -v '.git*' | xargs -I {} cp -R ~/{} .
    rm -rf .vim/bundle/*
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your ~/dotfiles directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
	fi;
fi;
unset doIt;

