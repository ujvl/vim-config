execute pathogen#infect()

syntax enable
set backspace=2
set background=light
colorscheme thor " Tomorrow-Night-Bright kellys abra smyck
filetype plugin indent on
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
let g:tex_flavor='latex'

set iskeyword+=:
" Set the filetype based on the file's extension, overriding any
" 'filetype' that has already been set
au BufRead,BufNewFile *.pyst set filetype=python

let g:cssColorVimDoNotMessMyUpdatetime = 1
" fuck vim's python syntax highlighting
autocmd BufEnter,BufRead,BufNewFile *.py    set iskeyword-=:

" char max lim
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%121v', 100)

" colorscheme for latex only
autocmd FileType tex colorscheme thor
autocmd FileType cpp colorscheme 256-jungle
set conceallevel=0
let g:tex_conceal = ""

" Don't replace clipboard with deleted
xnoremap p "_dP"

" Jump to last pos
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Highlight searches
set hlsearch
