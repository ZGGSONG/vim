# ZGGSONG-VIM

## 预览

![VIMRC](https://raw.githubusercontent.com/ZGGSONG/vim/master/vim.png)

## 个人编辑使用的vim配置文件

使用插件：
```
vim-airline/vim-airline
vim-airline/vim-airline-themes
w0ng/vim-hybrid
scrooloose/nerdtree
ryanoasis/vim-devicons
tiagofumo/vim-nerdtree-syntax-highlight
luochen1990/rainbow
jiangmiao/auto-pairs
junegunn/vim-easy-align
mattn/emmet-vim
mhinz/vim-startify
jceb/vim-orgmode
junegunn/fzf{ 'do': { -> fzf#install() } }
junegunn/fzf.vim
Yggdroot/indentLine
itchyny/vim-cursorword
neoclide/coc.nvim{'branch': 'release'}
```
## 使用此VIMRC

> 已使用jsdelivr—-CDN加速，国内速度很快

### 准备
- 安装vim
- 安装curl
- 安装git
- __其中已经安装coc代码补全插件，需要手动安装`nodejs`和``npm__
-  以ubuntu为例
```
sudo apt install vim curl git nodejs
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
- 更新cos对语言的支持
	- 打开[coc.nvim_wiki](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
	- 安装依赖
	- 打开`vim`,输入`CocConfig`,将复制内容粘贴到`{}`中去，多个语言支持放入多个`{}`中去,并以`,`分开
	- C语言安装`ccls`,
	```
	sudo apt install ccls    #ubuntu为例
	#CocConfig
	{
	  "languageserver": {
      "clangd": {
          "command": "clangd",
          "rootPatterns": ["compile_flags.txt", "compile_commands.json"],
          "filetypes": ["c", "cpp", "objc", "objcpp"]
          }
       }
    }
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


## 使用`neovim`

```shell
ln -s ~/.vim .config/nvim
ln -s ~/.vimrc .config/nvim/init.vim
```
## 使用愉快
