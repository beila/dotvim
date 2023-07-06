nmap <silent> [a <Plug>(ale_previous_wrap)
nmap <silent> ]a <Plug>(ale_next_wrap)
nmap <leader>af <Plug>(ale_fix)
nmap <leader>ap <Plug>(ale_detail)

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'typescript': ['prettier', 'tslint'],
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

"augroup ale_typescript
    "autocmd!
    "autocmd FileType typescript let b:ale_javascript_prettier_executable = getcwd() . 'node_modules/.bin/prettier'
    "autocmd FileType typescript let b:ale_typescript_tsserver_executable = getcwd() . 'node_modules/.bin/tsserver'
"augroup END
