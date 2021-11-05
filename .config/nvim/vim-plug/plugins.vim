call plug#begin('~/.config/nvim/plugged')
    " Comment code
    Plug 'tpope/vim-commentary'

    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
    else
        " Syntax support
        Plug 'sheerun/vim-polyglot'
        " Autopairs
        Plug 'jiangmiao/auto-pairs'
        " File explorer
        Plug 'scrooloose/NERDTree'  
        " Icons
        Plug 'ryanoasis/vim-devicons'

        " Intellisense
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Lspsaga
        "Plug 'neovim/nvim-lspconfig'
        "Plug 'glepnir/lspsaga.nvim'
        "Plug 'hrsh7th/nvim-compe'
        "Plug 'nvim-lua/completion-nvim'
        "Plug 'nvim-lua/diagnostic-nvim'
        " Airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " Indent guides
        Plug 'Yggdroot/indentLine' 
        " Git integration
        Plug 'mhinz/vim-signify'
        " Autoclose tags
        Plug 'alvan/vim-closetag'
        " Ranger
        Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
        " Fzf
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
        " Prettier
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

        " Themes
        Plug 'joshdick/onedark.vim'
        Plug 'kaicataldo/material.vim'
        Plug 'tomasiser/vim-code-dark'
        Plug 'crusoexia/vim-monokai'
        Plug 'ayu-theme/ayu-vim'
        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'kyoz/purify', { 'rtp': 'vim' }
        Plug 'mhartington/oceanic-next'
        Plug 'rakr/vim-one'
        Plug 'Rigellute/shades-of-purple.vim' 


        "Javis
        Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}   
        Plug 'tell-k/vim-autopep8'

        "Latex
        Plug 'vim-latex/vim-latex' 
        Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
        Plug 'lervag/vimtex'
        Plug 'gi1242/vim-tex-autoclose'

        Plug 'junegunn/goyo.vim'  
        Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
        Plug 'tranvansang/octave.vim'
        Plug 'jiangmiao/auto-pairs' 
        Plug 'sirver/ultisnips'
        Plug 'tpope/vim-fugitive'

        Plug 'preservim/vim-textobj-quote'
        Plug 'tpope/vim-rhubarb'
        Plug 'voldikss/vim-floaterm'

        Plug 'glepnir/dashboard-nvim'


        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug  'github/copilot.vim'

        Plug 'pandysong/ghost-text.vim'
    endif

call plug#end()
