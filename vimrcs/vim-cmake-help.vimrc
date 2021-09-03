"https://github.com/bfrg/vim-cmake-help#user-content-example-1

" Open the online CMake documentation for current word in a browser

" Open CMake documentation for current word in a preview window
"nmap <buffer> <leader>K <plug>(cmake-help)

"https://github.com/bfrg/vim-cmake-help#user-content-example
setlocal keywordprg+=:CMakeHelp

augroup vimcmakehelp
    autocmd!
    autocmd BufEnter CMake*.txt,*.cmake,CMake\ Help* setlocal keywordprg=:CMakeHelp
    autocmd BufEnter CMake*.txt,*.cmake,CMake\ Help* nmap <leader>k <plug>(cmake-help-online)
augroup END
