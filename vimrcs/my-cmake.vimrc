" http://vim.wikia.com/wiki/Errorformats

" CMake Parser
" Call stack entries
let &efm = ' %#%f:%l %#(%m)'
" Start of multi-line error
let &efm .= ',%E' . 'CMake Error at %f:%l (message):'
" End of multi-line error
let &efm .= ',%Z' . 'Call Stack (most recent call first):'
" Continuation is message
let &efm .= ',%C' . ' %m'

augroup mycmakeautocommands
    "autocmd FileType cmake nmap <leader>C yyP:.s/"/\\"/<Enter>Imessage(STATUS "<Esc>A")<Esc>==
    autocmd FileType cmake nmap <leader>C yyP:s/"/\\"/eImessage(STATUS "A")
    autocmd FileType cmake setlocal iskeyword+=-
augroup END
