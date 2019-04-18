set nocompatible    " be iMproved, required
filetype off        " required 

if has("win32")
    set rtp+=$HOME/vimfiles/bundle/Vundle.vim
    call vundle#begin('$HOME/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'taglist.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'molokai'
Plugin 'Tagbar'
Plugin 'nanotech/jellybeans.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'Valloric/YouCompleteMe'

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

set fileencodings=utf8,euc-kr
set encoding=utf-8

" line number
set nu
set ruler

" search
set nowrapscan
set hlsearch
set incsearch
set ignorecase

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
set autochdir
set tags=./tags,tags;

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
set t_Co=256
colorscheme jellybeans

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" gitgutter timeout 1.5s (default: 4000, 4s)
set updatetime=1500

" vimdiff conflict resolve Ctrl + ] 1, 2, 3
nmap <C-]>1 :diffg LOCAL<CR> " get from LOCAL
nmap <C-]>2 :diffg BASE<CR> " get from BASE
nmap <C-]>3 :diffg REMOTE<CR> " get from REMOTE

" Navigate splits through Ctrl+J,K,L,H
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggle NERDTree by F7
nmap <F7> :NERDTreeToggle<CR>

" Toggle Tagbar by F8
nmap <F8> :TagbarToggle<CR>

" Ctags jump shortcut
nnoremap <F11> <C-]>
nnoremap <F12> <C-t>

" Search file by Ctrl+P
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" Start indent guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Dart standard indentation (2-space)
let dart_style_guide = 2

if has("gui_running")
    set columns=180          " Required for &relativenumber
    set lines=50            " Increase default height of window
    set guioptions-=T       " Disable toolbar in gVim

    if has("gui_win32")
        set guifont=Consolas:h10
    elseif has("gui_macvim")
        set guifont=Monaco:h12
    endif
else
    if has("win32") && !has('nvim')
        set term=xterm
        set t_Co=256
        let &t_AB="\e[48;5;%dm"
        let &t_AF="\e[38;5;%dm"
    endif
endif

if has('nvim')
    let g:Guifont="Consolas:h9"
    tnoremap <Esc> <C-\><C-n>
    nmap <F2> :bel sp 50 <BAR> resize 10 <BAR> terminal <CR>
endif


" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Shortcuts for navigating to definitions using YouCompleteMe
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Open definition in new vertical split
map <leader>ds :vsp <CR>:exec("YcmCompleter GoToDefinitionElseDeclaration")<CR>
" Open definition in new tab
map <leader>dt :tab split<CR>:exec("YcmCompleter GoToDefinitionElseDeclaration")<CR>
