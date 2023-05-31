#!/bin/bash

PLUGINS=("nerdtree" "vim-airline" "vim-airline-themes")

for p in "$PLUGINS"
do
    rm -r $HOME/.vim/bundle/$p
done

rm $HOME/.vimrc
history -c
