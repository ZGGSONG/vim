#!/bin/sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://cdn.jsdelivr.net/gh/junegunn/vim-plug@master/plug.vim

echo "installed vim-plug"

curl -fLo ~/.vimrc --create-dirs \
    https://cdn.jsdelivr.net/gh/ZGGSONG/vim@master/vimrc

echo "installed vimrc"

rm install.sh

echo "请继续执行\n\nvim ~/.vimrc\n\n:PlugInstall\n\n食用愉快"
