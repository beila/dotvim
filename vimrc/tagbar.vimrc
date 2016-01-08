" http://majutsushi.github.com/tagbar/
nmap <F8> :TagbarToggle<CR>
" :help tagbar-autoopen
autocmd FileType * nested :call tagbar#autoopen(0)
let g:tagbar_width = 25
let g:tagbar_autoshowtag = 1

