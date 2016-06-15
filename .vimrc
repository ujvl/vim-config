execute pathogen#infect()

syntax enable
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

let g:cssColorVimDoNotMessMyUpdatetime = 1

abbr psvm public static void main(String[] args){<CR>}<esc>O
abbr sysout System.out.println("");<esc>2hi
abbr sop System.out.println();<esc>1hi

" fuck vim's python syntax highlighting
autocmd BufEnter,BufRead,BufNewFile *.py    set iskeyword-=:

" colorscheme for latex only
autocmd FileType tex colorscheme thor
autocmd FileType cpp colorscheme 256-jungle
