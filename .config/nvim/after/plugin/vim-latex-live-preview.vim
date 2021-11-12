
let g:tex_flavor = 'latex'
let g:livepreview_previewer = 'zathura'

function FuncionLatexView()
 :LLPStartPreview
endfunction
command LatexView call FuncionLatexView()

function FuncionLatexCompile()
 :term pdflatex *.tex
endfunction
command LatexCompile call FuncionLatexCompile()

function FuncionLatexPDF()
 :term zathura  *.pdf
endfunction
command LatexPDF call FuncionLatexPDF()

function FuncionLatexPlantilla1()
  :-1read /home/javier/.LATEX/Plantilla1/Latex/Plantilla1.tex
endfunction
command LatexPlantilla1 call FuncionLatexPlantilla1()

function FuncionLatexPlantilla2()
  :-1read /home/javier/.LATEX/Plantilla2/Feathertheme.tex 
endfunction
command LatexPlantilla2 call FuncionLatexPlantilla2()

function FuncionLatexBegin()
  :-1read /home/javier/.LATEX/Funciones/begin.tex 
endfunction
command LatexBegin call FuncionLatexBegin()

function FuncionLatexEquation()
  :-1read /home/javier/.LATEX/Funciones/equation.tex 
endfunction
command LatexEquation call FuncionLatexEquation()

function FuncionLatexItemize()
  :-1read /home/javier/.LATEX/Funciones/itemize.tex 
endfunction
command LatexItemize call FuncionLatexItemize()

function FuncionLatexParentesis()
  :-1read /home/javier/.LATEX/Funciones/parentesis.tex 
endfunction
command LatexParentesis call FuncionLatexParentesis()

