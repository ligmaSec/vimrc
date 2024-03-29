lua require("ligma")

lua print("fk it we ball")

set number

" autoswitch between relative and absolute numbering when in edition mode 
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END




" half page browsing and centering
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz


" center on find

nnoremap n nzz
nnoremap N Nzz

" sync y register with clipboard
set clipboard+=unnamedplus



"airline theme https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='jellybeans'
" let g:airline_theme='deus'
