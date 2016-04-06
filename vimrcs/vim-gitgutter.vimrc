" https://github.com/airblade/vim-gitgutter#activation
let g:gitgutter_max_signs = 5000

" https://github.com/airblade/vim-gitgutter#hunks
nmap ]c <Plug>GitGutterNextHunk <Plug>GitGutterPreviewHunk
nmap [c <Plug>GitGutterPrevHunk <Plug>GitGutterPreviewHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk
nmap <leader>d <Plug>GitGutterPreviewHunk
let g:gitgutter_map_keys = 0
