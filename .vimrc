set encoding=utf-8

execute pathogen#infect()

syntax enable

filetype plugin on
filetype indent on

" matchit
runtime macros/matchit.vim

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>s :Ack! <cword><CR>

" Pretty JSON
map <Leader>j :%!python -m json.tool<CR>

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
"set relativenumber

" Show trailing char
set list
set listchars=tab:»\ ,trail:·

" fix backspace issues
set backspace=2

" easy highlighting deactivation
map ,h :set hlsearch<CR>
map ,n :set nohlsearch<CR>

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
ca Ack Ack!

" CommandT options
let g:CommandTFileScanner='ruby'
let g:CommandTTraverseSCM='pwd'
let g:CommandTWildIgnore=&wildignore . ",*/node_modules/*,*/_build/*,*/deps/*,*/rel/*,*/bower_components/*"

" Ack with ag
if executable('ag')
 let g:ackprg = 'ag --vimgrep'
endif

" Log files have filetype log
au BufRead,BufNewFile *.logbook set filetype=logbook

" Toggle NerdTree with CTRL+F
nnoremap <C-f> :NERDTreeToggle<CR>

" Replace word under cursor
:nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

" Use CTRL+e to expand a snippet
let g:UltiSnipsExpandTrigger="<c-e>"
set switchbuf=usetab
