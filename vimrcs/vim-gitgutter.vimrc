" https://github.com/airblade/vim-gitgutter#getting-started
set updatetime=250

" https://github.com/airblade/vim-gitgutter#activation
let g:gitgutter_max_signs = 5000

" https://github.com/airblade/vim-gitgutter/issues/696#issuecomment-944809679
highlight! link SignColumn LineNr
augroup gitguttersigncolumnbackgroundcolour
    autocmd!
    autocmd ColorScheme * highlight! link SignColumn LineNr
augroup END

map zg :GitGutterFold<Enter>zr
