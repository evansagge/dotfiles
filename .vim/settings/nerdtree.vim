" Keybinds
map <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>
nmap <leader>f :NERDTreeFind<CR>

" Open NERDTree when vim starts
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p

" Open NERDTree when vim starts even if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree when vim starts on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Close vim if NERDTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeHijackNetrw = 0
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg', 'bower_components', 'node_modules', '.git']
let NERDTreeIgnore += ['\.pyc','\~$','\.swo$','\.swp$','\.git$','\.hg','\.svn','\.bzr', '\.DS_Store']
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeShowBookmarks=1
" let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
" let NERDTreeMouseMode=1 " Default, double-click on any node to open
let NERDTreeKeepTreeInNewTab=1
