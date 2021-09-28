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

" General
Plug 'neovim/nvim-lspconfig'          " Lsp
Plug 'sainnhe/gruvbox-material'       " Color scheme
Plug 'itchyny/lightline.vim'          " Vim status line
Plug 'edkolev/tmuxline.vim'           " Tmux status line
Plug 'machakann/vim-highlightedyank'  " Highlight yanked text in vim
Plug 'kyazdani42/nvim-web-devicons'   " Devicons
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
" Autocompletion snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
" Autocompletion icons
Plug 'onsails/lspkind-nvim'

call plug#end()

set encoding=UTF-8

" --- Colors

colorscheme gruvbox-material

let g:gruvbox_material_background = 'medium'

set background=dark
set termguicolors


" --- Lua config

lua require('jakewies')


" --- Remaps

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
nnoremap <C-b> :Lexplore <bar> :vertical resize 30<Cr>
nnoremap <C-p> :Telescope find_files<Cr>

