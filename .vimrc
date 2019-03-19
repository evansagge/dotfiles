" Allow vim to break compatibility with vi
set nocompatible " This must be first, because it changes other options

" ======================================================================================================================
" General settings

" Change leader to a comma because the backslash is too far away
" That means all \x comaamands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

set autoread 			" Reload file if it has been changed outside of vim
set clipboard+=unnamedplus
set cursorline			" Highlight current line
set encoding=utf-8
set gcr=a:blinkon0              " Disable cursor blink
set history=1000                " Store lots of :cmdline history
set laststatus=2		" Always show status line
set nowrap
set number                      " Line numbers are good
set ruler
set scrolloff=3
set showcmd                     " Show incomplete cmds down the bottom
set showmatch			" Highlight matching bracket on insert
set noshowmode                  " Do not show current mode down the bottom (lightline)
set visualbell                  " No sounds
set completeopt=noselect,menuone
set synmaxcol=128
" set timeoutlen=1000 ttimeoutlen=50
set wildmenu  " fancy autocomplete for commands (try :color <tab> for demo)
set wildmode=longest,list,full

" Backups, swaps, undos
set backupdir^=~/.vim/_backup/    " where to put backup files.
set directory^=~/.vim/_temp/      " where to put swap files.
set undodir=~/.vim/undofile/
set undofile  " remember undo history

" Indents
set autoindent			" Copy indent from current line when starting a new line
set backspace=indent,eol,start  " Allow backspace in insert mode
set expandtab			" Use spaces to insert a tab
set shiftwidth=2
set softtabstop=2
set tabstop=8

" Allow mouse use
set ttyfast
set mouse=a

" ======================================================================================================================
" Load vim-plug
set rtp+=~/.vim/

runtime plugins.vim
runtime! settings/*.vim

" reloads .vimrc -- making all changes active
map <silent> <Leader>v :source ~/.vimrc<CR>:PlugInstall<CR>:bdelete<CR>:exe ":echo 'vimrc reloaded'"<CR>
