set nu
set ai
set cindent
set smartindent
colorscheme desert

set ts=4
set sw=4
set sts=4
set expandtab

set tags=./tags,./.tags,/usr/include/tags/,/usr/include/.tags

" vimdiff conflict resolve Ctrl + ] 1, 2, 3
nmap <C-]>1 :diffg LOCAL<CR> " get from LOCAL
nmap <C-]>2 :diffg BASE<CR> " get from BASE
nmap <C-]>3 :diffg REMOTE<CR> " get from REMOTE
