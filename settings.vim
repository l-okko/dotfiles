let g:mapleader="\<space>"

syntax enable

set tabstop=4 softtabstop=4
set expandtab
set smartindent
set smartcase
set hidden
set encoding=utf-8
set number
set incsearch


let g:vim_markdown_conceal=2
let g:startify_custom_header = [
\ ' _   _                 _           ',
\ '| \ | | ___  _____   _(_)_ __ ___  ',
\ '|  \| |/ _ \/ _ \ \ / / |  _ ` _ \ ',
\ '| |\  |  __/ (_) \ V /| | | | | | |',
\ '|_| \_|\___|\___/ \_/ |_|_| |_| |_|',
\ '',
\ '',
\ ]

" Autocompletion für LaTeX (installieren mit cocinstall coc-vimtex)
let g:coc_global_extensions = [
      \ 'coc-vimtex'
      \]

" Wichtig, damit LaTeX autocompletion funktioniert
let g:tex_flavor = 'latex'

" Mathe Umgebung mit $$
autocmd FileType tex let b:coc_pairs = [["$", "$"]]

let g:vimtex_view_method = 'zathura'
