"Progamming
filetype plugin indent on
syntax on

"Indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

"Make backspace work like most editors
set backspace=2

"Remap escape key to something sane
inoremap jk <Esc>
inoremap kj <Esc>
inoremap JK <Esc>
inoremap KJ <Esc>

"Persistent Undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

"Line numbers
set number

"Colorscheme
colorscheme elflord
