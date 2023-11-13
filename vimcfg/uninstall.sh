#!/bin/bash

BUNDLE=$HOME/.vim/bundle

PLUGINS=(nerdtree vim-airline vim-airline-themes)

for p in ${PLUGINS[@]}
do
    sudo rm -r $BUNDLE/$p
done

sudo rm $HOME/.vimrc
