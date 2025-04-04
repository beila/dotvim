let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey30    ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey30    ctermbg=4
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
