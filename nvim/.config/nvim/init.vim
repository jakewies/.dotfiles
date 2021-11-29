" --- General 

set termguicolors
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
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a


" --- Plugins

call plug#begin('~/.config/nvim/plugged')

" General
Plug 'kyazdani42/nvim-web-devicons'  " Devicons
Plug 'nvim-lualine/lualine.nvim'     " Vim status line
Plug 'machakann/vim-highlightedyank' " Highlight yanked text in vim
Plug 'kyazdani42/nvim-tree.lua'      " File explorer
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Lsp
Plug 'neovim/nvim-lspconfig'     
Plug 'jose-elias-alvarez/null-ls.nvim'
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'              " completion snippets
Plug 'saadparwaiz1/cmp_luasnip'      " completion snippets
Plug 'onsails/lspkind-nvim'          " completion icons
" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()


" --- Plugin config
lua require('jakewies')


" --- Colors

set background=dark
colorscheme tokyonight


" --- Remaps

let mapleader = " "

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
nnoremap <C-p> :Telescope find_files<Cr>
nnoremap <C-n> :NvimTreeToggle<Cr>
