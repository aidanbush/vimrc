#!/bin/bash
# copy vimrc file over
cp .vimrc ~/

# get colour file
git clone https://github.com/aidanbush/vim-colors-tayra.git

if [ ! -d ~/.vim/ ]; then
    mkdir ~/.vim
fi

if [ ! -d ~/.vim/colors/ ]; then
    mkdir ~/.vim/colors
fi

echo "copying over tayra.vim colors file"
cp vim-colors-tayra/colors/tayra.vim ~/.vim/colors/

# copy gitconfig over
cp .gitconfig ~/
