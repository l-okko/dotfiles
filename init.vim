call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'shime/vim-livedown'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
call plug#end()
let g:airline_powerline_fonts = 1
let g:rainbow_active = 1
nmap <C-n> :NERDTreeToggle<CR>
imap <C-n> <Plug>(coc-snippets-expand)
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs' ,
	\ 'coc-highlight',
	\ 'coc-java',
	\ 'coc-markdownlint',
	\ 'coc-prettier',
	\]
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
set number
let g:coc_snippet_next = '<tab>'
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
