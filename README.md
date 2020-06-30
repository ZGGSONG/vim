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
curl -fLo ~/.vimrc --create-dirs https://cdn.jsdelivr.net/gh/ZGGSONG/vim@master/vim
```
### 使用

已使用自动化安装，curl完成打开`vim ~/.vimrc`即可


<details>
  <summary>若自动安装插件失败，看这里</summary>

  ```
  vim
  :PlugInstall
  #完成更新
  :wq
  vim
  #畅快的使用vim
  ```

</details>

### 其他
- 更新cos对语言的支持

- 添加`coc`
<details>
  <summary>添加代码</summary>
  
```
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"coc代码补全
"==============
" Coc配置文件
"==============
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
```
</details>

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
