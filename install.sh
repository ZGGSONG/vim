#!/bin/sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://cdn.jsdelivr.net/gh/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vimrc --create-dirs https://cdn.jsdelivr.net/gh/ZGGSONG/vim/vimrc

echo "安装完成，请继续执行`vim .vimrc` && `:PlugInstall`"

rm install
