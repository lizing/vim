# vim setting

## Setup and settings

### Linux
~~~
git clone git@github.com:lizing/vim.git
mv vim .vim
ln -s .vim/.vimrc .vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim
:VundleInstall
~~~

### Windows
~~~
cd %USERPROFILE%
git clone git@github.com:lizing/vim.git
mv vim vimfiles
mklink _vimrc vimfiles\vimrc
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%/vimfiles/bundle/Vundle.vim
vim
:VundleInstall
~~~