execute pathogen#infect()

set encoding=utf-8

syntax enable

filetype plugin on
filetype indent on

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

" Haskell stuff
" Reload
"map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
"map tt :call GHC_ShowType(0)<CR>
" Type infer
"map <silent> tw :call GHC_ShowType(1)<CR>

if !empty($MY_RUBY_HOME)
  let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/rubysite_ruby/*'),"\n"),',')
endif

" CommandT options
 let g:CommandTFileScanner='ruby'
 let g:CommandTTraverseSCM='pwd'
