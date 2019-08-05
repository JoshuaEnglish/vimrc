set statusline=%n\:%f\ -\%y%m%=%l/%L
set laststatus=2
set number
set colorcolumn=80
set scrolloff=3
colorscheme industry
nnoremap <space> za

set guifont=Source_Code_Pro:h10:cANSI:qDRAFT

" Python file settings -------- {{{
augroup filetype_python
autocmd!
autocmd BufNewFile,BufRead *.py set tabstop=4 
autocmd BufNewFile,BufRead *.py set softtabstop=4 
autocmd BufNewFile,BufRead *.py set shiftwidth=4 
autocmd BufNewFile,BufRead *.py set expandtab 
autocmd BufNewFile,BufRead *.py set smarttab 
autocmd BufNewFile,BufRead *.py set autoindent 
autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
augroup END
" }}}

" Vim file settings --------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim :setlocal foldmethod=marker
augroup END
" }}}

" XML and HTML file settings --------- {{{
augroup filetype_xml
autocmd!
au BufNewFile,BufRead *.{js,html,css,xml} set tabstop=2
au BufNewFile,BufRead *.{js,html,css,xml} set softtabstop=2
au BufNewFile,BufRead *.{js,html,css,xml} set autoindent
au BufNewFile,BufRead *.{js,html,css,xml} set smarttab
au BufNewFile,BufRead *.{js,html,css,xml} set expandtab
au BufNewFile,BufRead *.{js,html,css,xml} set textwidth=79
augroup END
" }}} 

" " RST file shortcuts ---------- {{{ 
"nnoremap m0 :normal: yypVr-yyxPjjo<cr>I<cr>
"nnoremap m1 :normal: yypVr=o<cr>I<cr>
"nnoremap m2 :normal: yypVr-o<cr>I<cr>
"inoremap <localleader>0 <esc>yypVr=yykPjjo<cr>
"inoremap <localleader>1 <esc>yypVr=o<cr>
"inoremap <localleader>2 <esc>yypVr-o<cr>
" }}}

au InsertEnter * colorscheme koehler
au InsertLeave * colorscheme industry

let mapleader = "-"
let maplocalleader = "_"

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Double quote a word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

if !exists("*ShowWhiteSpace")
function ShowWhiteSpace()
    set listchars=eol:$,tab:>-,trail:~,space:.,extends:>,precedes:<
    set list
endfunction
endif

if !exists("*HideWhiteSpace")
function HideWhiteSpace()
    set listchars=
    set list
endfunction
endif

" PyMode 
let g:pymode_python = 'python3'

" Pathogen Load
filetype off

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on


