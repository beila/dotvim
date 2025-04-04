augroup vimcmakehelp
    autocmd!
    "https://github.com/bfrg/vim-cmake-help#user-content-example
    autocmd BufEnter CMake*.txt,*.cmake,CMake\ Help* setlocal keywordprg=:CMakeHelp
    "https://github.com/bfrg/vim-cmake-help#user-content-example-1
    autocmd BufEnter CMake*.txt,*.cmake,CMake\ Help* nmap <leader>k <plug>(cmake-help-online)
augroup END
