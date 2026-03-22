let g:netrw_banner = 0
let mapleader = " "

syntax on
filetype on
set path+=**

" Highlighting

augroup c_headers
    autocmd!
    autocmd BufRead,BufNewFile *.h setfiletype c
augroup END

" Remap

nnoremap <leader>pv :Ex<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Setup

set number
set relativenumber
set guicursor=

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set smartindent
set nowrap

set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir

set nohlsearch
set incsearch

set scrolloff=8
set colorcolumn=80
