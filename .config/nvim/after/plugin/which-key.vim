" Map leader to which_key
"let g:mapleader = "\<Space>"
let g:maplocalleader = ','
"nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ 'Commentary'                 , 'comment' ]
let g:which_key_map['n'] = [ ':NERDTreeToggle'            , 'NERDTreeToggle' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['v'] = [ ':vsp'                       , 'Vertical Split']
let g:which_key_map['r'] = [ ':RnvimrToggle'              , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['t'] = [ ':term'                      , 'Terminal']
let g:which_key_map['p'] = [ 'Prettier'                   , 'Prettier']
let g:which_key_map['x'] = [ ':close'                     , 'Salir' ]
let g:which_key_map['c'] = [ ':Colors'                     , 'Change colorscheme' ]

" s is for search
let g:which_key_map.s =  {
      \ 'name' : 'Search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':Ag'           , 'FZF'],
      \ }

" l is for latex
let g:which_key_map.l = {
      \ 'name' : 'Latex' ,
      \ 'a' : [':LatexView'              , 'View'],
      \ 'b' : [':LatexCompile'           , 'Compile'],
      \ 'c' : [':LatexPDF'               , 'PDF'],
      \ 'd' : [':LatexPlantilla1'        , 'Plantilla1'],
      \ 'e' : [':LatexPlantilla2'        , 'Plantilla2'],
      \ 'f' : [':LatexBegin'             , 'Begin'],
      \ 'g' : [':LatexEquation'          , 'Equation'],
      \ 'h' : [':LatexItemize'           , 'Itemize'],
      \ }

" l is for Bracey
let g:which_key_map.b = {
      \ 'name' : 'Bracey' ,
      \ 'a' : [':BraceyStart'            , 'Start'],
      \ 'b' : [':BraceyStop'             , 'Stop'],
      \ 'c' : [':BraceyReload'           , 'Reload'],
      \ }

" l is for Spell
let g:which_key_map.o = {
      \ 'name' : 'Ortografía' ,
      \ 'a' : [':setlocal spell spelllang=es'               , 'Español'],
      \ 'b' : [':setlocal spell spelllang=en'               , 'Ingles'],
      \ 'c' : [':set nospell'                              , 'Stop'],
      \ 'd' : [']s'                                        , 'Error ->'],
      \ 'e' : ['[s'                                        , 'Error <-'],
      \ 'f' : ['z='                                        , 'Opciones'],
      \ 'g' : ['zg'                                        , 'Añadir Palabra'],
      \ 'h' : ['sug'                                       , 'Deshacer'],
      \ }

" l is for Git
let g:which_key_map.g = {
      \ 'name' : 'Git' ,
      \ 'a' : [':Git init'                        , 'Init'],
      \ 'b' : [':Git add .'                       , 'Add'],
      \ 'c' : [':Git commit'                      , 'Commit'],
      \ 'd' : [':Git pull origin main'            , 'Pull Main'],
      \ 'e' : [':Git push origin main'            , 'Push Main'],
      \ 'f' : [':Git pull origin master'          , 'Pull Master'],
      \ 'g' : [':Git push origin master'          , 'Push Master'],
      \ 'h' : ['gd'                               , 'Remove credential']
      \ }

" l is for Plug
let g:which_key_map.i = {
      \ 'name' : 'Plug' ,
      \ 'a' : [':PlugStatus '            , 'Status'],
      \ 'b' : [':PlugInstall '           , 'Install'],
      \ }

" Register which key map
autocmd! User vim-which-key call which_key#register(',', 'g:which_key_map')
