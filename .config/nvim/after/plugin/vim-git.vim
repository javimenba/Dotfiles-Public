function GitpushMain()
        :Git config --global credential.helper store   
        :Git push origin main
endfunction

function GitpushMaster()
        :Git config --global credential.helper store   
        :Git push origin master
endfunction

function GitdeletCredential()
          :Git config --global --unset credential.helper
          :Git config --system --unset credential.helper 
endfunction

command Rd call GitdeletCredential()
command Ug call GitpushMain()
command UG call GitpushMaster()


nnoremap gi :Git init
nnoremap ga :Git add .
nnoremap gc :Git commit

nnoremap gp :Git pull origin main  <cr>
nnoremap GP :Git pull origin master  <cr>

nnoremap gu :Ug<cr>
nnoremap GU :UG<cr>
nnoremap gd :Rd<cr>


