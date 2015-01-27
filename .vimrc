set nocompatible    " be iMproved, required
filetype off        " required 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-Tree'
Plugin 'taglist.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" line number
set nu
set ruler

" search
set nowrapscan
set hlsearch
set incsearch

" indentation
set ai
set cindent
set smartindent

" space
set ts=4
set sw=4
set sts=4
set expandtab
set smarttab

" tags
set tags=./tags,./.tags,/usr/include/tags/,/usr/include/.tags

filetype plugin on
filetype indent on

set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set showcmd

" color and gui
syntax on
colorscheme molokai
if has("gui_running")
    set guifont=Consolas:h14
    set lines=60 columns=100
endif
let g:molokai_original = 1
let g:rehash256 = 1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" vimdiff conflict resolve Ctrl + ] 1, 2, 3
nmap <C-]>1 :diffg LOCAL<CR> " get from LOCAL
nmap <C-]>2 :diffg BASE<CR> " get from BASE
nmap <C-]>3 :diffg REMOTE<CR> " get from REMOTE

" Toggle NERDTree
map <Leader>nt <ESC>:NERDTree<CR>
