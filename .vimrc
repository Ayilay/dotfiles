" Syntax highlighting
syntax on

" Indentation Settings
filetype plugin indent on

" REGULAR SETTINGS
"set tabstop=4
"set shiftwidth=4

" CSE11 SETTINGS
set tabstop=2
set shiftwidth=2
"match Error /\%81v.\+/

set cindent
set expandtab
set nu
set bg=dark

" Keybinds for vim-like navigation through tabs
map <C-h> :tabp <CR>
map <C-l> :tabn <CR>

" TODO Fix tab moving, not working
"execute "set <M-h>=\eh"
"execute "set <M-j>=\ej"
"nmap <M-h> :tabm+ <CR>
"nmap <M-j> :tabm- <CR>
