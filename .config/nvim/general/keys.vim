" Remap escape
nnoremap <C-c> <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Alternate way to save
nnoremap <C-s> :w!<CR>
" Alternate way to quit and save
nnoremap <C-q> :q!<CR>

" TAB in general mode will move to next buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go to prev buffer
nnoremap <S-TAB> :bprevious<CR>

" Close current buffer
nnoremap <C-b> :bd<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



"LATEX
"nnoremap <C-l> :LLPStartPreview<CR>

noremap \b cw\begin{<C-R>"}<CR>\end{<C-R>"}
noremap \i cw\begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><Esc>3kA\item<Space>
noremap \e cw<Space>\begin{equation}<CR><Enter>\end{equation}<Enter><Enter><Esc>3kA<Space><Space><Space><Space>        
noremap \p1 :-1read $HOME/.LATEX/Plantilla1/Latex/Plantilla1.tex <CR>
noremap \p2 :-1read $HOME/.LATEX/Plantilla2/Feathertheme.tex <CR> 
noremap \l  cw\left[<Space><Space>\right]

nnoremap <F11> :set conceallevel=0 <CR>
nnoremap <F12> :set conceallevel=1 <CR>
"Bracey
nnoremap  \bi :Bracey
nnoremap  \bs :BraceyStop
nnoremap  \br :BraceyReload

"HTML
"noremap ,a cw style="text-align:<Space><Space>"

"Terminal 
"nnoremap  <A-CR> :botright vertical terminal <CR>

"nnoremap  <C-c> :term pdflatex *.tex<CR>
" nnoremap  <C-x> :term zathura  *.pdf<CR>
"Mapeos de telcas
:imap ii <Esc>
"Así se define una función
"function FuncionInsertaFecha()
"         :LLPStartPreview
"         :w
"endfunction
"command Fecha call FuncionInsertaFecha()

" Coc
"Files recent
nnoremap <C-h> :Hist<CR>
"nnoremap  <C-h> :Telescope find_files<cr>

augroup textobj_quote
  autocmd!
  autocmd FileType markdown call textobj#quote#init()
  autocmd FileType textile call textobj#quote#init()
  autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END

""Seleccionar todo lineas y copiar"
nnoremap <F2> :%y <CR> 
""Seleccionar todo lineas y eliminar"
nnoremap <F3> :%d <CR>

""Terminal foltante "
nnoremap   <silent>   <F7>    :FloatermNew<CR>



