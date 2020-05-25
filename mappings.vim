" Better Esc
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-c> <Esc>

" Speichern
nnoremap <C-s> :w<CR>

" Window navigiation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map  <leader>h :wincmd h<CR>
map  <leader>j :wincmd j<CR>
map  <leader>k :wincmd k<CR>
map  <leader>l :wincmd l<CR>

" NerdTree
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <silent><Leader>pv :NERDTreeFind<CR>

" Markdown Compile
nnoremap <leader>c :!pandoc %:p -o %:p:r.pdf --latex-engine=pdflatex <CR>


" CoC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
