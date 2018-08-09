#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

#git pull origin master;

function doIt() {
    for file in $(ls -d .?* | grep -v '\.\.' | grep -v '.git*'); do
        if [[ -d $file ]]; then
            if [[ -d $file.git ]]; then
                rm -rf $file.git
                cp -R ~/$file .
            fi
        else 
            cp ~/$file . > /dev/null 2>&1
        fi
    done
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

