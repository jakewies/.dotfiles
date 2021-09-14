" tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" line number
set relativenumber
set number
set numberwidth=2
set signcolumn=number
:hi LineNr ctermfg=darkGrey

" file history
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" search
set incsearch

" text wrapping
set nowrap
au FileType gitcommit setlocal tw=72

" Open new split panes to right and bottom
set splitbelow
set splitright

set hidden
set noerrorbells
set scrolloff=8

" plugins (managed by vim-plug)
call plug#begin('~/.config/nvim/plugged')

Plug 'gruvbox-community/gruvbox'

call plug#end()

" colors
set termguicolors
colorscheme gruvbox

" remaps
