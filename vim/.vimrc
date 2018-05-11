set nocp
if has('win32') || has('win64')
      set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
  endif
execute pathogen#infect()
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()
filetype plugin indent on
colorscheme northpole
syntax on
filetype plugin indent on
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeMirror = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
set number
set tabstop=4
set shiftwidth=4
set expandtab