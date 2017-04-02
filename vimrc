set background=dark
colorscheme default

let mapleader = "\<Space>"

syntax enable

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set number  " line numbers
set showcmd " show last command in status bar

filetype on
filetype plugin on
"filetype indent on

set wildmenu " visual autocomplete

set incsearch " search as characters are typed
set hlsearch  "highlight matches
nnoremap <leader><space> :nohlsearch<CR>

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0


