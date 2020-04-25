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

### 准备
- 安装vim
- 安装curl
- 安装git
- 其中已经安装coc代码补全插件，需要手动安装`ccls`

> 以ubuntu为例
```
sudo apt install vim curl git
```

### 下载

```
curl -fLo install.sh https://cdn.jsdelivr.net/gh/ZGGSONG/vim/install.sh && chmod +x install.sh && ./install.sh

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

## 使用愉快
