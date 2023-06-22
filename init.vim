lua require("ligma")

" relative number toggling when in insert mode
set number
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


colorscheme moonfly
