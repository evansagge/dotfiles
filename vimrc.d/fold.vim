let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

" autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
" autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" au WinEnter * set nofen " unfold on focus open
" au WinLeave * set nofen " unfold on focus close

set foldlevel=20
set foldlevelstart=20


