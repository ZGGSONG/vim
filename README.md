# ZGGSONG-VIM

## 预览

![VIMRC](https://raw.githubusercontent.com/ZGGSONG/vim/master/vim.png)

## 个人编辑使用的vim配置文件

包括各类日常使用快捷键及常用部分插件：

[vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)

[vim-airline/vim-airline-themes](https://github.com/)

[w0ng/vim-hybrid](https://github.com/w0ng/vim-hybrid)

[iamcco/markdown-preview.vim](https://github.com/iamcco/markdown-preview.vim)

[iamcco/mathjax-support-for-mkdp](https://github.com/iamcco/mathjax-support-for-mkdp)[

[scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

[luochen1990/rainbow](https://github.com/luochen1990/rainbow)

[yianwillis/vimcdoc](https://github.com/yianwillis/vimcdoc)

## 使用此VIMRC

> 已使用jsdelivr—-CDN加速，国内速度很快
### 脚本

```
wget install.sh https://cdn.jsdelivr.net/gh/ZGGSONG/vim/install && chmod +x install.sh && ./install.sh

```

### 下载[vim-plug](https://github.com/junegunn/vim-plug)

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://cdn.jsdelivr.net/gh/junegunn/vim-plug@master/plug.vim
```
### 下载
```
curl -fLo ~/.vimrc --create-dirs \
    https://cdn.jsdelivr.net/gh/ZGGSONG/vim@master/vimrc
```



### 使用
```
vim

:PlugInstall
#完成更新

:wq

vim
#畅快的使用vim
```
### Powerline字体

<b style="color:red">注意:airline主题需要[powerline字体](https://github.com/powerline/fonts)</b>

```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```
<b style="color:red">或者</b>
<details>
  <summary>这里提供一个我自己常用的nerd font（支持powerline）</summary>

> [点击下载](https://cdn.jsdelivr.net/gh/ZGGSONG/vim/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.otf)

</details>



> 如果没有安装`curl`请安装`curl`
> > ubuntu:`sudo apt install curl`
> > manjaro:`sudo pacman -S curl`

### 修改此VIM

- 使用vim编辑进入.vimrc配置文件

```
vim ~/.vimrc  #编辑vimrc文件
```
### 修改CAPSLOOKS为ESC

```
vim ~/.profile

#粘贴如下内容
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

source ~/.profile
```

## 使用愉快
