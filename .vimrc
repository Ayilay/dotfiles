""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Vundle Config and Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set rtp+=/home/ayilay/.vim/bundle/Vundle.vim
call vundle#begin()

" Needed for Vundle to run
Plugin 'VundleVim/Vundle.vim'

" Makes it easier to navigate through words
" Use <leader><leader>w/b to go forwards/backwards
Plugin 'easymotion/vim-easymotion'

" Adds git status indicators
Plugin 'airblade/vim-gitgutter'

" Absolute Wankery, look this up
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'Valloric/YouCompleteMe'

" Sublime-text-like multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Adds sexy airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NerdTree
Plugin 'scrooloose/nerdtree'

call vundle#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Airline Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"let g:airline_theme='distinguished'
let g:airline_theme='base16_eighties'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Style Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting
syntax on

set nu
set bg=dark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Indentation Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indentation Settings
filetype plugin indent on
set cindent
set expandtab

" REGULAR SETTINGS
" set tabstop=4
" set shiftwidth=4

" UCSD RETARD SETTINGS
set shiftwidth=2
set tabstop=2
set softtabstop=2
"match Error /\%81v.\+/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Navigation settings and shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets the default vim clipboard to the system clipboard
" Requires vim compiled with +clipboard support or
" running `gvim -v` instead of `vim`
set clipboard=unnamedplus

" Change the leader key to ',' for various shortcuts
let mapleader = ','

" When pressing Ctrl+j/k, scroll up/down while maintaining the cursor centered
nnoremap <C-j> jzz
nnoremap <C-k> kzz

" Ctrl+h/l moves the tab left/right
map <C-h> :tabm- <CR>
map <C-l> :tabm+ <CR>

" Tab/Shift-Tab changes to the next/prev tab
map <Tab> :tabn <CR>
map <S-Tab> :tabp <CR>

" Save current file with sudo privileges
" https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission/
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
