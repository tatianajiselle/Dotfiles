set nocp
 
" if windows machiene
if has('win32') || has('win64')
     set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
  endif
 
" install pathogen plugins (nerdtree)
execute pathogen#infect()
 
" the basics -- u better like tabs.
set number
set tabstop=4
set shiftwidth=4
set expandtab

" enable mouse scrolling in vim instead of history buffer 
set mouse=a

" set colorscheme -- files located in dependencies enable all 256 colors
set term=xterm
set t_Co=256
filetype plugin indent on
colorscheme zenburn
syntax on
 
" for vundle plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
Plugin 'dylanaraps/wal'
 
call vundle#end()
filetype plugin indent on
 
" open nerdtree on open
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
 
" nerdtree mods
nmap <F6> :NERDTreeToggle<CR>
set splitright
let NERDTreeShowHidden = 1
let NERDTreeMirror = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 0
 
" syntastic mods
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0