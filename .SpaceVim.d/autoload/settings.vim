function! settings#before() abort
  set clipboard+=unnamedplus


  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tmuxline#enabled = 0
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail'

  let g:airline_theme='simple'

  let g:startify_custom_header = ''
endfunction

function! settings#after() abort
  let g:test#strategy = "vimux"

  set expandtab           " enter spaces when tab is pressed
  set textwidth=120       " break lines when line length increases
  set tabstop=2           " use 4 spaces to represent tab
  set softtabstop=2
  set shiftwidth=2        " number of spaces to use for auto indent
  set autoindent          " copy indent from current line when starting a new lin
  set backupdir=~/.vim/backup/
  set directory=~/.vim/backup/
  set noswapfile
  set nobackup

endfunction
