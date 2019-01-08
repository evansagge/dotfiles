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
" Plugin 'neomake/neomake'
Plugin 'w0rp/ale'

" Git integration
Plugin 'tpope/vim-fugitive'

" Inline git status
Plugin 'airblade/vim-gitgutter'

" Makes indentation blocks into text objects (basically required for Python)
Plugin 'michaeljsmith/vim-indent-object'

" Text snippets (use Ctrl+J to complete)
" Plugin 'garbas/snipmate.vim'

" Status bar, similar to Powerline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Move seamlessly between tmux & other panes with ctrl+[hjkl]
Plugin 'christoomey/vim-tmux-navigator'

" Tmux integration
Plugin 'benmills/vimux'
Plugin 'dcosson/vimux-nose-test2'

" Themes
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'raphamorim/lucario'
" Plugin 'tomasr/molokai'
Plugin 'carakan/new-railscasts-theme'

" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

" Syntax/language
Plugin 'jmcantrell/vim-virtualenv'
" Plugin 'groenewege/vim-less'
" Plugin 'nono/vim-handlebars'
" Plugin 'afshinm/npm.vim'
" Plugin 'andviro/flake8-vim'
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

" Plugin 'blueyed/vim-diminactive'
" Plugin 'tmux-plugins/vim-tmux-focus-events'

Plugin 'posva/vim-vue'
Plugin 'severin-lemaignan/vim-minimap'

call vundle#end()
