" :help fugitive
map <leader>s :update<CR>:Gstatus<CR>
map <leader>d :update<CR>:Gdiff<CR>
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

