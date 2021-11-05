
if !exists('g:vscode')
    let g:mapleader = "\<Space>"
endif
let g:tex_conceal = " "
let g:maplocalleader = ','
let g:tex_flavor = 'latex'
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_method= 'zathura'
let g:bracey_server_port='5500'
let g:dashboard_default_executive ='fzf'
let g:deoplete#enable_at_startup = 1


set number relativenumber
set colorcolumn=81
set laststatus=0
set smartindent
set autoindent
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set showtabline=4
set formatoptions-=cro
set hidden
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set ruler
set mouse=a
set cursorline
set splitbelow
set splitright
set clipboard=unnamedplus
set background=dark
" set background=dark
set autochdir
set conceallevel=0
set timeoutlen=500

" Salto de linea automatico
set wrap linebreak



syntax enable
filetype on
filetype indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete

let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]




