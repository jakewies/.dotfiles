syntax on

call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox

set background=dark
set termguicolors
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=2
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

highlight LineNr ctermfg=darkGrey

au FileType gitcommit setlocal tw=72

let mapleader = " "
let g:netrw_banner=0

" fzf 
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git'"
let $FZF_DEFAULT_OPTS='--layout=reverse --border --padding=1'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(15)
  let width = float2nr(80)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1
  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

if executable('rg')
    let g:rg_derive_root='true'
endif

nnoremap <C-p> :FZF<cr> 
nnoremap <C-f> :Rg!<space>
nnoremap <C-b> :Lexplore <bar> :vertical resize 30<Cr>
nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
