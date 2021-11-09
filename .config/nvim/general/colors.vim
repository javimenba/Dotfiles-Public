syntax on

" checks if your terminal has 24-bit color support
"if (has("termguicolors"))
"    set termguicolors
"endif
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  "colorscheme  ThNeoSolarized
endif
