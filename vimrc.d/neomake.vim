" autocmd! BufWritePost,BufReadPost * Neomake
"
" " let g:neomake_python_enabled_makers = ['flake8']
" let g:neomake_python_enabled_makers = ['pyflakes']
" let g:neomake_python_pyflakes_maker = {
"       \ 'gutter_symbol': '✖'
"       \ }
" let g:neomake_warning_sign = { 'text': 'W', 'texthl': 'WarningMsg' }
" let g:neomake_error_sign = { 'text': 'E', 'texthl': 'ErrorMsg' }
" let g:neomake_open_list = 2
" let g:neomake_highlight_lines = 1

" Causes issues with resizing (https://github.com/vim/vim/issues/931).
let g:qf_loclist_window_bottom = 0
let g:qf_window_bottom = 0

" Annoying with Neomake, but only on Vim?!
" Even with let `g:neomake_open_list = 2` !
let g:qf_auto_open_quickfix = 0
let g:qf_auto_open_loclist = 0
autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
            \   q :cclose<cr>:lclose<cr>
autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
            \   bd|
            \   q | endif

let g:ale_sign_column_always = 1
let g:ale_python_flake8_args = '-m flake8 --max-line-length=180'
let g:ale_python_flake8_executable = 'python'
let g:ale_python_flake8_options = '-m flake8 --max-line-length=180'
