set runtimepath+=/usr/local/opt/fzf

map <leader>f :GFiles<Enter>
map <leader>F :Files<Enter>
map <leader>g :Rg <C-R>=expand("<cword>")<Enter><Enter>
vmap <leader>g "9y:Rg <C-R>9<Enter>
map <leader><c-g> :Rg <C-R>+<Enter>
map <leader>G :Rgi <C-R>=expand("<cword>")<Enter><Enter>
vmap <leader>G "9y:Rgi <C-R>9<Enter>
map <leader>' :BLines<Enter>
map <leader>t :Tags<Enter>
map <c-]> :Tags <C-R>=expand("<cword>")<Enter><Enter>
vmap <c-]> "9y:Tags <C-R>9<Enter>
map <F8> :BTags<Enter>
map <leader>m :Marks<Enter>
map <leader>b :History<Enter>
map <leader>; :History:<Enter>
map <leader>/ :History/<Enter>
map <leader>l :BCommits<Enter>
map <leader>c :Commands<Enter>
map <leader><c-m> :Maps<Enter>

" https://github.com/junegunn/fzf.vim#user-content-example-advanced-ripgrep-integration
function! RipgrepFzf(query, fullscreen)
  " {q} from reload_command always comes with enclosing quote 'blah'
  " Thus, https://stackoverflow.com/a/6988363
  let command_fmt = 'echo %s | xargs rg --column --line-number --no-heading --color=always --smart-case --follow'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang Rg call RipgrepFzf('-g!tests -g!__tests__ -g!__mocks__ "(?s)D?(Native_)?'.<q-args>.'" -sw ', <bang>0)
command! -nargs=* -bang Rgi call RipgrepFzf('--no-ignore "(?s)D?(Native_)?'.<q-args>.'" -sw ', <bang>0)

" https://github.com/junegunn/fzf.vim#user-content-mappings
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" https://github.com/junegunn/fzf.vim#user-content-custom-statusline
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

let g:fzf_preview_window = ['right,50%', 'ctrl-\']
