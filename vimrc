
" set colors
set background=dark
colorscheme default

" set our leader key to spacebar
let mapleader = "\<Space>"

" enable syntax highlighting
syntax enable

" use spaces instead of tabs
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" show line numbers
set number  

" show command in status bar
set showcmd 

" activate file type detection and load plugin files
filetype on
filetype plugin on

" visual autocomplete
set wildmenu 

" incremental search
set incsearch
set hlsearch  " highlight matches
" clear search highlighting
nnoremap <leader><space> :nohlsearch<CR> 

" preserve tabs in make files
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0


