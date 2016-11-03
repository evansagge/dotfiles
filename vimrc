set nocompatible      " Use vim, no vi defaults

for f in split(glob('~/.vimrc.d/*.vim'), '\n')
  exe 'source' f
endfor

syntax on
set background=dark
let g:rehash256 = 1
colorscheme molokai
filetype on
filetype plugin indent on

let python_highlight_all = 1

if &term =~ "xterm"
  "256 color --
  let &t_Co=256
  " restore screen after quitting
  set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
  if has("terminfo")
    let &t_Sf="\ESC[3%p1%dm"
    let &t_Sb="\ESC[4%p1%dm"
  else
    let &t_Sf="\ESC[3%dm"
    let &t_Sb="\ESC[4%dm"
  endif
endif
"
" Remove trailing space on save
autocmd BufWritePre * :%s/\s\+$//e

" No show command
" autocmd VimEnter * set nosc
" au BufNewFile * set noeol

" Automatic formatting
" autocmd BufWritePre *.rb :%s/\s\+$//e
" autocmd BufWritePre *.go :%s/\s\+$//e
" autocmd BufWritePre *.haml :%s/\s\+$//e
" autocmd BufWritePre *.html :%s/\s\+$//e
" autocmd BufWritePre *.scss :%s/\s\+$//e
" autocmd BufWritePre *.slim :%s/\s\+$//e
" au BufRead,BufNewFile *.go set filetype=go

" File types
" au FileType make setlocal noexpandtab
" au BufRead,BufNewFile *.rabl setf ruby
" au BufRead,BufNewFile *.styl setf sass
" au! BufRead,BufNewFile *.haml setfiletype haml
" au BufNewFile,BufRead *.ejs set filetype=html
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
" au FileType markdown setlocal wrap linebreak textwidth=72 nolist
" au BufNewFile,BufRead *.json set ft=javascript
" au FileType python setlocal tabstop=4 shiftwidth=4
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
au BufRead,BufNewFile *.thor set filetype=ruby

nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
