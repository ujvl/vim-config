execute pathogen#infect()

syntax enable
set backspace=2
set background=light
set hlsearch
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

set mouse=nicr

let g:cssColorVimDoNotMessMyUpdatetime = 1

abbr psvm public static void main(String[] args){<CR>}<esc>O
abbr sysout System.out.println("");<esc>2hi
abbr sop System.out.println();<esc>1hi

" fuck vim's python syntax highlighting
autocmd BufEnter,BufRead,BufNewFile *.py    set iskeyword-=:

" 80char max lim
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" colorscheme for latex only
autocmd FileType tex colorscheme thor
autocmd FileType cpp colorscheme 256-jungle
set conceallevel=0
let g:tex_conceal = ""

" Don't replace clipboard with deleted
xnoremap p "_dP"

" Syntastic
let g:syntastic_quiet_messages = { "type": "style" }

" Trim whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
