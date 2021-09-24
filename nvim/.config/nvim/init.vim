let mapleader = " "
let g:netrw_banner=0


" --- General 

syntax on
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=4
set relativenumber
set signcolumn=number
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set noerrorbells
set scrolloff=8
set noshowmode


" --- Plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'neovim/nvim-lspconfig'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'machakann/vim-highlightedyank'

call plug#end()


" --- Colors

colorscheme gruvbox-material

let g:gruvbox_material_background = 'medium'

set background=dark
set termguicolors


" --- Remaps

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
nnoremap <C-b> :Lexplore <bar> :vertical resize 30<Cr>

