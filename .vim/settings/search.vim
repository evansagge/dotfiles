set nohlsearch 			" Highlight all matches from previous search
set ignorecase
set incsearch
set smartcase

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>
nnoremap <leader>nhs :nohlsearch<Bar>:echo<CR>

" ack.vim
nmap <C-f> :Ack<space>
