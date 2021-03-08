map <leader>F :Files<Enter>
map <leader>f :GFiles<Enter>
map <leader>g :Rg <C-R>=expand("<cword>")<Enter><Enter>
map <leader>G :Rg <C-R>+<Enter>
map <leader>' :BLines<Enter>
map <leader>t :Tags<Enter>
map <c-]> :Tags <C-R>=expand("<cword>")<Enter><Enter>
map <F8> :BTags<Enter>
map <leader>b :History<Enter>
map <leader>; :History:<Enter>
map <leader>/ :History/<Enter>
map <leader>l :BCommits<Enter>

" https://github.com/junegunn/fzf.vim#user-content-example-advanced-ripgrep-integration
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
