" :help fugitive
map <leader>s :Git<CR>
"map <leader>d :update<CR>:Gdiff<CR> "let's yield to vim-gitgutter
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

map g<C-f> :GBrowse!<CR>
