"""""""""""""""""""""""""""""""""""""""""""""""""""
"   Vundle Config and Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" Ability to recursive-find files with :find
set path+=**

" Cool menu while tab-ing thru vim commands
set wildmenu

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" Needed for Vundle to run
Plugin 'VundleVim/Vundle.vim'

" Makes it easier to navigate through words
" Use <leader><leader>w/b to go forwards/backwards
Plugin 'easymotion/vim-easymotion'

" Sublime-text-like multiple cursors
Plugin 'mg979/vim-visual-multi'

" Adds sexy airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" LMFAO
Plugin 'vim/killersheep'

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

set relativenumber

augroup zmk_keymap_ft
    au!
    autocmd BufNewFile,BufRead *.keymap set syntax=c
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Indentation Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indentation Settings
filetype plugin indent on
set cindent
set cinkeys-=0#
set indentkeys-=0#
set expandtab

" temporary settings
set shiftwidth=4
set tabstop=4
set tw=0
"set softtabstop=2
"match Error /\%81v.\+/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Navigation settings and shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets the default vim clipboard to the system clipboard
" Requires vim compiled with +clipboard support or
" running `gvim -v` instead of `vim`
set clipboard=unnamedplus

" Change the leader key to ',' for various shortcuts
let mapleader = ' '

" When pressing Ctrl+j/k, scroll up/down while maintaining the cursor centered
nnoremap <C-j> jzz
nnoremap <C-k> kzz

" Ctrl+h/l moves the tab left/right
nnoremap <C-h> :tabm- <CR>
nnoremap <C-l> :tabm+ <CR>

" Tab/Shift-Tab changes to the next/prev tab
nnoremap <Tab> :tabn <CR>
nnoremap <S-Tab> :tabp <CR>

set relativenumber



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Convenient Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Re-source this vimrc file
" Mnemonic: SOurce Vimrc (sov)
nnoremap <leader>sov :so $HOME/.vimrc<CR>

" Open vimrc in new split buffer for editing
" Mnemonic: Edit Vimrc (ev)
nnoremap <leader>ev :sp $HOME/.vimrc<CR>

" Search and Replace word under cursor
" Mnemonic: <leader>s, because <leader> does cool stuff,
"           and 's' like vim's search/replace command
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Various Misc Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Save current file with sudo privileges
" https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission/
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!


set nowrap

" ITALICS WORK I'm not sure how I fixed it, it magically worked one day :(
"set t_ZH=[1m
"set t_ZR=[21m

set term=xterm-256color
"highlight Comment cterm=italic

hi Special ctermfg=blue guifg=Orange cterm=none gui=none


"------------------------------------------------------------
" Custom text objects
" https://thevaluable.dev/vim-create-text-objects/
"------------------------------------------------------------

function! IndentTextObject()
  let startindent = indent(line('.'))

  " Move up till we are at the top of the buffer
  " or till the indentation is less than the starting one
  let prevline = line('.') - 1
  while prevline > 0 && (indent(prevline) >= startindent || (prevline) =~ "^\\s*$")
    -
    let prevline = line('.') - 1
  endwhile

  " Begin linewise-visual selection
  normal! 0V

  " Move down till we are at the bottom of the buffer
  " or till the indentation is less than the starting one
  let nextline = line('.') + 1
  let lastline = line('$')
  while nextline <= lastline && (indent(nextline) >= startindent || (nextline) =~ "^\\s*$")
    +
    let nextline = line('.') + 1
  endwhile
endfunction

onoremap <silent>ai :<C-U>call IndentTextObject()<CR>
onoremap <silent>ii :<C-U>call IndentTextObject()<CR>
xnoremap <silent>ai :<C-U>call IndentTextObject()<CR>
xnoremap <silent>ii :<C-U>call IndentTextObject()<CR>

"------------------------------------------------------------
" Whitespace highlighting options
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
"------------------------------------------------------------


"""""""""""""""""""""""""""""""""""""""""""""""""""
" LaTeX Settings for ECE161A
" Comment out when done
"function LatexListing()
"  normal! o\begin{lstlisting}[frame=single, gobble=5]
"  normal! o\end{lstlisting}
"endfunction
"
"function LatexAlign()
"  normal! o\begin{align*}
"  normal! o\end{align*}
"endfunction
"
"" Insert LaTeX Code Listing
"" Mnemonic: Latex Listing
"nnoremap <leader>ll :call LatexListing()<CR>
"
"" Insert LaTeX Align Environment
"" Mnemonic: Latex Align
"nnoremap <leader>la :call LatexAlign()<CR>O
