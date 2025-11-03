augroup mycmakeautocommands
    autocmd FileType cpp nmap <buffer> <leader>C yyP:let my_save_search = @/<Enter>:s/"/\\"/e<Enter>:let @/ = my_save_search<Enter>Iprintf("<Esc>A\n");    // FIXME<Esc>==j
augroup END
