syntax on

set number
set rnu
set tabstop=3
set shiftwidth=3
set expandtab
set numberwidth=1
set nowrap
set noswapfile
set nobackup

call plug#begin('~/.local/share/nvim/plugged')

   Plug 'morhetz/gruvbox'
   Plug 'folke/tokyonight.nvim'
   Plug 'vim-airline/vim-airline'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'scrooloose/nerdtree'
   Plug 'scrooloose/nerdcommenter'
   Plug 'jiangmiao/auto-pairs'
   Plug 'alvan/vim-closetag'
   Plug 'yggdroot/indentline'

call plug#end()

set background=dark
let g:gruvbox_contrast_dark="hard"
" colorscheme gruvbox
colorscheme tokyonight

let mapleader=" "

" Config nerdtree
nmap <Leader>t :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" Config coc
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()

