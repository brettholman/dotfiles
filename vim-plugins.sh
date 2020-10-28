#!/bin/bash

touch -f ~/.vim/bundle/tmp

git clone https://github.com/scrooloose/syntastic ~/.vim/bundle/syntastic
git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
git clone https://github.com/nanotech/jellybeans.vim ~/.vim/bundle/jellybeans.vim
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/nerdcommenter ~/.vim/bundle/nerdcommenter
git clone https://github.com/klen/python-mode ~/.vim/bundle/python-mode
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/vim-gitgutter
git clone https://github.com/skwp/vim-easymotion ~/.vim/bundle/vim-easymotion
git clone https://github.com/jistr/vim-nerdtree-tabs ~/.vim/bundle/vim-nerdtree-tabs
git clone https://github.com/kana/vim-surround ~/.vim/bundle/vim-surround
git clone https://github.com/derekwyatt/vim-scala ~/.vim/bundle/vim-scala
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm ~/.vim/bundle/tmp
