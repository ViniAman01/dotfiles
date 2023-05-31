#!/bin/bash

BUNDLE=$HOME/.vim/bundle

PLUGINS=(nerdtree vim-airline vim-airline-themes)

for p in ${PLUGINS[@]}
do
    rm -r $BUNDLE/$p
done

rm $HOME/.vimrc
history -c
