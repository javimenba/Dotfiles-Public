" Description: Keymaps

nnoremap <S-C-p> "0p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


" Tabs

" Open current directory
nnoremap te :tabedit 
nnoremap <S-Tab> :tabprev<Return>
nnoremap <Tab> :tabnext<Return>
nnoremap <C-b> :bd<CR>
"------------------------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
nmap sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-



" Javier
nnoremap <C-q> :q! <CR>
nnoremap <C-s> :w! <CR>

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

noremap \b cw\begin{<C-R>"}<CR>\end{<C-R>"}
noremap \i cw\begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><Esc>3kA\item<Space>
noremap \e cw<Space>\begin{equation}<CR><Enter>\end{equation}<Enter><Enter><Esc>3kA<Space><Space><Space><Space>        
noremap \p1 :-1read $HOME/.LATEX/Plantilla1/Latex/Plantilla1.tex <CR>
noremap \p2 :-1read $HOME/.LATEX/Plantilla2/Feathertheme.tex <CR> 
noremap \l  cw\left[<Space><Space>\right]

nnoremap <F4> :set conceallevel=0 <CR>
nnoremap <F5> :set conceallevel=1 <CR>

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



