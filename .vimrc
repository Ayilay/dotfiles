" Syntax highlighting
syntax on

" Indentation Settings
filetype plugin indent on

" REGULAR SETTINGS
set tabstop=4
set shiftwidth=4

" UCSD RETARD SETTINGS
"set tabstop=2
"set shiftwidth=2
"match Error /\%81v.\+/

set cindent
set expandtab
set nu
set bg=dark

" Keybinds for vim-like moving of tabs
map <C-h> :tabm- <CR>
map <C-l> :tabm+ <CR>

map <Tab> :tabn <CR>
map <S-Tab> :tabp <CR>
