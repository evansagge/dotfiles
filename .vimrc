set nocompatible      " Use vim, no vi defaults

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'Lokaltog/vim-distinguished'
Plugin 'afshinm/npm.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ap/vim-css-color'
Plugin 'dsawardekar/ember.vim'
Plugin 'ervandew/supertab'
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/splice.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tsaleh/vim-align'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-conflicted'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'joker1007/vim-markdown-quote-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'kana/vim-fakeclip'

call vundle#end()            " required

filetype plugin indent on    " required
let mapleader=","

set backspace=indent,eol,start    " backspace through everything in insert mode
set clipboard=unnamed
set cursorline
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set incsearch
set list
set modelines=0
set nobackup
set noswapfile
set nowrap
set nowritebackup
set number
set ruler                         " Show line and column number
set shiftwidth=2
set smartcase
set synmaxcol=128
set tabstop=2
set ttyscroll=10

syntax enable     " Use syntax highlighting
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

" Automatic formatting
" autocmd BufWritePre *.rb :%s/\s\+$//e
" autocmd BufWritePre *.go :%s/\s\+$//e
" autocmd BufWritePre *.haml :%s/\s\+$//e
" autocmd BufWritePre *.html :%s/\s\+$//e
" autocmd BufWritePre *.scss :%s/\s\+$//e
" autocmd BufWritePre *.slim :%s/\s\+$//e

" au BufNewFile * set noeol
" au BufRead,BufNewFile *.go set filetype=go

" No show command
" autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" Ag
nmap <C-f> :Ag<space>

" Syntastic
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_mode_map = { 'passive_filetypes': ['html'] }

" CtrlP
nnoremap <silent> t :CtrlP<cr>
" let g:ctrlp_working_path_mode = 2
" let g:ctrlp_by_filename = 1
" let g:ctrlp_max_files = 600
" let g:ctrlp_max_depth = 5
"let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$',
    \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
    \ }

" Fugitive
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :Git push<CR>

" TComment

map <leader>/ :TComment<CR>

" Tagbar
nmap <leader>rt :TagbarToggle<CR>

" Airline
let g:airline_theme='light'
let g:airline_powerline_fonts = 1

" File types

" au FileType make setlocal noexpandtab
" au BufRead,BufNewFile *.rabl setf ruby
" au BufRead,BufNewFile *.styl setf sass
" au! BufRead,BufNewFile *.haml setfiletype haml
" au BufNewFile,BufRead *.ejs set filetype=html
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
" au FileType markdown setlocal wrap linebreak textwidth=72 nolist
" au BufNewFile,BufRead *.json set ft=javascript
" au FileType python setlocal tabstop=4 shiftwidth=4
au BufRead,BufNewFile *.thor set filetype=ruby

" General Mappings (Normal, Visual, Operator-pending)

" Toggle paste mode
" nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
" imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format the entire file
" nnoremap <leader>fef :normal! gg=G``<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Easier split navigations

" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" More natural split opening

" set splitbelow
" set splitright

" Save
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>a

" Remove trailing space on save
autocmd BufWritePre * :%s/\s\+$//e

" Mouse
set ttyfast
set mouse=a
set ttymouse=xterm2

" NERDTree
map <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>
let NERDTreeHijackNetrw = 0
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg', 'bower_components', 'node_modules', '.git']
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeAutoDeleteBuffer=1

augroup AuNERDTreeCmd
autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
autocmd AuNERDTreeCmd VimEnter * wincmd p
autocmd AuNERDTreeCmd FocusGained * call s:UpdateNERDTree()
" autocmd AuNERDTreeCmd BufNew * wincmd p
function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END

" If the parameter is a directory, cd into it
function s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif

  if directory
    NERDTree
    wincmd p
    bd
  endif

  if explicitDirectory
    wincmd p
  endif
endfunction

" NERDTree utility function
function s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
"
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

""
"" Backup and swap files
""
set backupdir^=~/.vim/_backup/    " where to put backup files.
set directory^=~/.vim/_temp/      " where to put swap files.

" 'quote' a word
nnoremap qw :silent! normal mpea'<Esc>bi'<Esc>`pl
" double "quote" a word
nnoremap qd :silent! normal mpea"<Esc>bi"<Esc>`pl
" remove quotes from a word
nnoremap wq :silent! normal mpeld bhd `ph<CR>

" Center after jump
nnoremap G Gzz
nnoremap n nzz
nnoremap } }zz
