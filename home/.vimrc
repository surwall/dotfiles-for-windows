set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
" ****************** must have ***********************
filetype plugin indent on
syntax on
set number
set autoindent
set hlsearch
set wildmode=longest,list
" ******************************************************


" Always display the status line, even if only one window is displayed
set laststatus=2
set noshowmode

" set the commandline 
set cmdheight=2

" use case insensitive search, except when using capital cases
set ignorecase
set smartcase

" allow backspacing over autoindent, line break and start of insert action
set backspace=indent,eol,start

set ruler " always show the cursor
" use visual bell instead of beeping when doing something wrong
" disable flash (using with visualbell)
set visualbell t_vb=
set novisualbell


" ************************ encoding ***********************
set encoding=utf-8
set fileencodings=utf8,ucs-bom,cp936,gb2312 " cp936 is actually gbk


"*********************** maps ******************************
map Y y$




"************************* plugins  ***********************
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'

" plugin for vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " explorer
Plug 'dense-analysis/ale' " syntax checker
Plug 'airblade/vim-gitgutter' " display git diff
Plug 'preservim/nerdcommenter' " quickly comment 
Plug 'joshdick/onedark.vim' " color scheme 
Plug 'vim-airline/vim-airline' " status bar

"Initialize plugin system
call plug#end()


colorscheme onedark


"************************ language specific ****************
set tabstop=4    " tab occupy how many space
set softtabstop=4
set expandtab    " convert tab to space
set shiftwidth=4 " when using >> << use how many space


"************************** map keys ***********************
nnoremap <F7> :NERDTreeToggle<CR>
"
