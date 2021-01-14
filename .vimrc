execute pathogen#infect()

" ########## COLORS ############

set termguicolors
if has('nvim')
    colorscheme desert
    autocmd FileType python colorscheme slate
endif

" ############ FUNDAMENTALS ############

set backspace=2
set hlsearch
set encoding=utf-8
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set linespace=2
set number
set history=1000
set undolevels=1000
set grepprg=grep\ -nH\ $*
set mouse=nicr
set iskeyword+=:
set hlsearch

syntax enable
filetype plugin indent on
highlight ColorColumn ctermbg=green
call matchadd('ColorColumn', '\%101v', 100)

" Don't replace clipboard with deleted
xnoremap p "_dP"
if has("autocmd")
  " Jump to position from last open
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Set the filetype based on the file's extension
au BufRead,BufNewFile *.pyst set filetype=python

" fuck vim's python syntax highlighting
autocmd BufEnter,BufRead,BufNewFile *.py    set iskeyword-=:


" ############ CUSTOM COMMANDS  ############
" Trim whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" ############# LATEX SPECIFIC #############
set conceallevel=0
let g:tex_conceal = ""
let g:tex_flavor='latex'


" ################# ALE ###################
packloadall
silent! helptags ALL
let g:ale_python_flake8_options = "--ignore=Q000"
let g:ale_python_pylint_options = "--disable=W1202,R0903,C0114,C0115,C0116,C0103"
