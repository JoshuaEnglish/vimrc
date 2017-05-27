set statusline=%f\ -\%y%=%l/%L
set laststatus=2
set number 
set colorcolumn=80

set guifont=Source_Code_Pro:h10:cANSI:qDRAFT
let g:pymode_python = 'python3'
let mapleader = "-"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

:autocmd BufWritePre,BufRead *.html :normal gg=G
:autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
:autocmd FileType python :iabbrev <buffer> iff if:<left>
:autocmd FileType python :iabbrev <buffer> fnc def ():<left><left><left>
:autocmd FileType python :iabbrev <buffer> kls class ():<left><left><left>

runtime bundle/vim-pathogen/autoload/pathogen.vim
" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
