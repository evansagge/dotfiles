nnoremap <silent> t :CtrlP<cr>
nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>

" let g:ctrlp_working_path_mode = 2
" let g:ctrlp_by_filename = 1
" let g:ctrlp_max_files = 600
" let g:ctrlp_max_depth = 5
" let g:ctrlp_map = ''

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$',
    \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
    \ }
