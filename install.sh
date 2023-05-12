#!/bin/bash

VIM="$HOME/.vim"
BUNDLE="$HOME/.vim/bundle"

if [ ! -d "$HOME/.vim" ]; then
    mkdir $VIM
fi

if [ ! -d "$HOME/.vim/bundle" ]; then
    mkdir $BUNDLE
fi

PLUGINS=("nerdtree" "vim-airline" "vim-airline-themes")

for i in "$PLUGINS"
do
    cp -r $i $BUNDLE
done

cp .vimrc $HOME
