"    ______        __  _    __     _____ __  __
"   / ___\ \      / / | |   \ \   / /_ _|  \/  |
"   \___ \\ \ /\ / /  | |____\ \ / / | || |\/| |
"    ___) |\ V  V / |_| |_____\ V /  | || |  | |
"   |____/  \_/\_/ \___/       \_/  |___|_|  |_|
"
"=============
"  常规设置
"=============
let mapleader=" "	"让空格键变成leader键
syntax on		"代码高亮
set number		"显示行号
set ruler		"打开状态栏标尺
set relativenumber	"以当前行号向上下递加
set cursorline		"强调当前行
set wrap		"字不会超出窗体
set showcmd		"显示cmd命令
set wildmenu 		"命令行提示
set hlsearch		"搜索高亮
exec "nohlsearch"
set incsearch		"边搜边高亮
set ignorecase		"搜索忽略大小写	
set smartcase		"智能大小写搜索
set nocompatible
set clipboard=unnamed   "终端下输入vim --version \| grep clipboard，如果出现+clipboard则可以使用---与系统共享剪贴板
filetype on		"识别不同的文件格式
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a		"让鼠标有用
set encoding=utf-8	"设置格式uhf-8
set tabstop=2		"缩进设置
set scrolloff=5 "上下余留5行"
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start	"让光标可以由下一行退格到上一行末尾
setlocal noswapfile	"不要生成swap文件，当buffer被丢弃的时候隐藏它
set bufhidden=hide	"同上
set autowrite		"自动保存

"=============
"自定义快捷键
"=============
noremap = nzz		"检索后查询高亮内容
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR> 	"空格加回车取消高亮
map S :w<CR>			"大写S保存
map Q :q<CR>			"大写Q退出
map R :source $MYVIMRC<CR>	"重新加载
"向上下左右分屏：hjkl-左下上右
map sl :set splitright<CR>:vsplit 
map sh :set nosplitright<CR>:vsplit 
map sk :set nosplitbelow<CR>:split 
map sj :set splitbelow<CR>:split 
"空格+方向：hjkl即转向相应分屏
map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER><right> <C-w>l
map <LEADER><left> <C-w>h
map <LEADER><up> <C-w>k
map <LEADER><down> <C-w>j
"ctrl+上下左右调整分屏大小
map <C-up> :res +5<CR>
map <C-down> :res -5<CR>
map <C-left> :vertical resize -5<CR>
map <C-right> :vertical resize +5<CR>
"上下分屏改成左右分屏
map sv <C-w>t<C-w>H
map sn <C-w>t<C-w>K
"新标签:nt + 新文件名
map nt :tabe 
"跳转标签页快捷键大写N大写P
nmap <S-N> :bn<CR>
nmap <S-p> :bp<CR>
"先安装figlet---最上方艺术字
"map tx :r !figlet 
"placeholder
map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l
"选中后按U即可转变大写
inoremap <C-u> <esc>gUiwea

"=============
"	 Plug插件
"=============
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'		"hybrid主题
Plug 'scrooloose/nerdtree'  "NERDTree
Plug 'ryanoasis/vim-devicons'	"nerd图标
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	"nerdtree高亮
Plug 'luochen1990/rainbow'  "彩虹括号插件
Plug 'jiangmiao/auto-pairs' "自动括号补全
Plug 'junegunn/vim-easy-align'  "符号对齐
Plug 'mattn/emmet-vim'  "HTML拓展
Plug 'mhinz/vim-startify' "启动页面美化
Plug 'jceb/vim-orgmode'	"vim版的emacs org mode
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'		"缩进线
Plug 'itchyny/vim-cursorword'	"相同的单词高亮
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"coc代码补全
call plug#end()	

"=============
"Airline配置
"=============
let g:airline#extensions#tabline#enabled = 1
"设置电力线字体启用
let g:airline_powerline_fonts = 1
"永远显示状态栏
set laststatus=2
"在windows中用xshell连接打开vim可以显示色彩
set t_Co=256     
"设置airline主题
let g:airline_theme='bubblegum'
"VIM主题配置
colorscheme hybrid
set background=dark		" Setting dark mode

"=============
"NERDTree配置
"=============
"自动打开NERDTree
"autocmd vimenter * NERDTree
"设置NERDTree打开快捷键为tt
map tt :NERDTreeToggle<CR>
"窗口大小
let NERDTreeWinSize=20
"是否默认显示行号
let NERDTreeShowLineNumbers=0
"是否默认显示隐藏文件
let NERDTreeShowHidden=1
" 显示书签列表
let NERDTreeShowBookmarks=0

"=============
" fzf配置文件
"=============
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'
" Ctrl p显示查找内容
nnoremap <silent> <c-p> :Files <CR>

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	    call append(line(".")+1, "")

"    elseif &filetype == 'mkd'
"        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: ".expand("SWJ")) 
		call append(line(".")+2, "	> Mail: ".expand("zggsong@foxmail.com")) 
		call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif
	if expand("%:e") == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif
	if expand("%:e") == 'h'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%:r"))
		call append(line(".")+7,"")
	endif
	"新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile * normal G
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""C,C++,java,python按F5编译运行"""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!gcc % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -std=c++11 -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
