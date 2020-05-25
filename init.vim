
call plug#begin('~/.vim/plugged')

" Plugin um Theme von PyWal zu benutzen
Plug 'dylanaraps/wal.vim'
" Dateibaum
Plug 'scrooloose/nerdtree'
" Für TeX 
Plug 'lervag/vimtex'
" Bessere Tabs
Plug 'godlygeek/tabular'
" Für Markdown
Plug 'plasticboy/vim-markdown'
" Zeigt beim Start von vim die zuletzt geöffneten Datein an
Plug 'mhinz/vim-startify'
" Autocompletion, dafür muss man aber noch andere Sachen installieren, guck am
" besten auf GitHub
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Snippets für Autocompletion
Plug 'SirVer/ultisnips'
" Noch mehr snippets
Plug 'honza/vim-snippets'

call plug#end()

colorscheme wal

" Damit ich auch TeX-Syntax in Markdown Datein verwenden kann
augroup markdown_settings "{
	autocmd!
	autocmd BufNewFile,BufRead *.md set filetype=tex
augroup END "}

" Läd weitere Configs
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
