nmap <silent> [a <Plug>(ale_previous_wrap)
nmap <silent> ]a <Plug>(ale_next_wrap)
nmap <leader>af <Plug>(ale_fix)

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': [
\       'add_blank_lines_for_python_control_statements',
\       'autoflake',
\       'autoimport',
\       'autopep8',
\       'black',
\       'isort',
\       'reorder-python-imports',
\       'yapf',
\    ],
\}

augroup ale_python
    autocmd!
    autocmd FileType python let b:ale_python_mypy_options = '--python-executable venv/bin/python'
augroup END
