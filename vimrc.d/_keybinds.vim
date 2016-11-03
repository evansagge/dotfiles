let mapleader=","

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk
nnoremap j gj
nnoremap k gk

" Center after jump
nnoremap G Gzz
nnoremap n nzz
nnoremap } }zz

" Toggle paste mode
" nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
" imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>
nnoremap <silent> \ :nohlsearch<Bar>:echo<CR>

" Save
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>a

map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>
