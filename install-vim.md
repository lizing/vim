# Vim 설치하기 (for YouCompleteMe)

## Vim Download & Install

```bash
git clone git@github.com:vim/vim.git

cd vim
./configure --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-pythoninterp=yes \
    --enable-perlinterp=yes \
    --enable-gui=gtk2 \
    --enable-cscope \
    --prefix=$HOME

make VIMRUNTIMEDIR=$HOME/share/vim/vim81/ -j4
make install
```

## vimrc Download & Install

```bash
cd ~
git clone git@github.com:lizing/vim.git
mv vim .vim
```

`vim` 실행 후 `:VundleInstall`

## YouCompleteMe Install (for C/C++, Java)

[YouCompleteMe GitHub](https://github.com/Valloric/YouCompleteMe)

```bash
cd ~/.vim/bundle/YouCompleteMe/
./install.py --clang-completer --java-completer
```