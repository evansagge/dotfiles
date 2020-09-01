function! settings#before() abort
  set clipboard+=unnamedplus
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
