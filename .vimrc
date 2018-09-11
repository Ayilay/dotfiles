""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Vundle Config and Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Needed for Vundle to run
Plugin 'VundleVim/Vundle.vim'

" Makes it easier to navigate through words
" Use <leader><leader>w/b to go forwards/backwards
Plugin 'easymotion/vim-easymotion'

" Adds git status indicators
Plugin 'airblade/vim-gitgutter'

call vundle#end()


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
set tabstop=4
set shiftwidth=4

" UCSD RETARD SETTINGS
"set tabstop=2
"set shiftwidth=2
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

" Ctrl+h/l moves the tab left/right
map <C-h> :tabm- <CR>
map <C-l> :tabm+ <CR>

" Tab/Shift-Tab changes to the next/prev tab
map <Tab> :tabn <CR>
map <S-Tab> :tabp <CR>

" Save current file with sudo privileges
" https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission/
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
