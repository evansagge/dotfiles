set autoindent
set autoread
set backspace=indent,eol,start    " backspace through everything in insert mode
set clipboard=unnamed
set colorcolumn=100
set cursorline
set encoding=utf-8
set expandtab
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2  " always show status line
set list
set modelines=0
set nobackup
set noswapfile
set nowrap
set nowritebackup
set number
set ruler
set scrolloff=3  " always have 3 lines showing above/below scroll pos
set shiftwidth=2
set showcmd  " extra info in the bottom bar when in visual mode
set showmatch
set smartcase
set splitbelow
set splitright
set completeopt=noselect,menuone
set softtabstop=2
set synmaxcol=128
set tabstop=8
set timeoutlen=1000 ttimeoutlen=0
set termguicolors
set undodir=~/.vim/undofile/
set undofile  " remember undo history
set wildmenu  " fancy autocomplete for commands (try :color <tab> for demo)
set wildmode=longest,list,full

""
"" Backup and swap files
""
set backupdir^=~/.vim/_backup/    " where to put backup files.
set directory^=~/.vim/_temp/      " where to put swap files.

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
