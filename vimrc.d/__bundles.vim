" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" File drawer/sidebar
Plugin 'scrooloose/nerdtree'

" Fuzzy search
Plugin 'kien/ctrlp.vim'

" Searching. Uses silver searcher if installed (see .vimrc)
Plugin 'mileszs/ack.vim'

" Linting (requires installing linters separately, i.e. pip install pep8 or npm install -g jshint)
Plugin 'neomake/neomake'

" Git integration
Plugin 'tpope/vim-fugitive'

" Inline git status
Plugin 'airblade/vim-gitgutter'

" Makes indentation blocks into text objects (basically required for Python)
Plugin 'michaeljsmith/vim-indent-object'

" Text snippets (use Ctrl+J to complete)
" Bundle 'garbas/snipmate.vim'

" Status bar, similar to Powerline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Move seamlessly between tmux & other panes with ctrl+[hjkl]
Bundle 'christoomey/vim-tmux-navigator'

" Themes
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'raphamorim/lucario'
Plugin 'tomasr/molokai'

" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

" Syntax/language
Plugin 'jmcantrell/vim-virtualenv'
" Bundle 'groenewege/vim-less'
" Bundle 'nono/vim-handlebars'
" Plugin 'afshinm/npm.vim'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'

" Alignment
Plugin 'junegunn/vim-easy-align'

" Quality of life
Plugin 'christoomey/vim-conflicted'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'

Plugin 'tpope/vim-surround'
Plugin 'kana/vim-fakeclip'
Plugin 'embear/vim-localvimrc'
Plugin 'tmhedberg/SimpylFold'

Plugin 'majutsushi/tagbar'

call vundle#end()
