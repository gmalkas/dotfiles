execute pathogen#infect()

set encoding=utf-8

syntax enable

filetype plugin on
filetype indent on

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>s :Ag! <cword><CR>

set nocompatible
set showcmd
set tabstop=2
set expandtab
set ignorecase
set incsearch
set autoindent
set nowrap
set sw=2
set number
set hlsearch
set ruler
set noswapfile
set t_Co=256
set cursorline

" Show trailing char
set list
set listchars=tab:»\ ,trail:·

" fix backspace issues
set backspace=2

" easy highlighting deactivation
map ,h :set hlsearch<CR>
map ,n :set nohlsearch<CR>

" No toolbar in GVim
set guioptions-=T

set laststatus=2
set ambiwidth=single

set timeout timeoutlen=1000 ttimeoutlen=100

colorscheme Tomorrow-Night-Eighties
set background=dark

hi ColorColumn ctermbg=236
set colorcolumn=80

" Powerline!
let g:Powerline_symbols = 'fancy'
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Do not fold stuff
set foldmethod=manual
set nofoldenable

" Insert only one space when joining lines that contain sentence-terminating
" " punctuation like `.`.
set nojoinspaces

" Prevent Ag from previewing first match by default
ca Ag Ag!

" CommandT options
 let g:CommandTFileScanner='ruby'
 let g:CommandTTraverseSCM='pwd'
 let g:CommandTWildIgnore=&wildignore . ",node_modules/**,_build/**,deps/**,rel/**"
