" Bootstrap vim-plug if it has not been installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Sensible vim defaults
Plug 'tpope/vim-sensible'

" Project management
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " File browser
Plug 'kien/ctrlp.vim'                                  " Fuzzy finder
Plug 'tomtom/tcomment_vim'                             " Commenting

" Color themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nanotech/jellybeans.vim'
Plug 'lifepillar/vim-solarized8'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'posva/vim-vue'

" Linting
Plug 'w0rp/ale'

" Search
Plug 'mileszs/ack.vim'

" Status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tmux integration
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tmux-plugins/vim-tmux'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-conflicted'

" Quality of life
Plug 'ervandew/supertab'                            " Tab completion
Plug 'godlygeek/tabular'                            " Tab alignment
Plug 'tpope/vim-surround'                           " Surround with quotes/brackets/delimiters/etc
Plug 'terryma/vim-multiple-cursors'                 " Allows editing multiple lines like sublime

call plug#end()
