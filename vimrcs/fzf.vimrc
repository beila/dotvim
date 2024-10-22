set runtimepath+=/usr/local/opt/fzf

map <leader>F :GFiles<Enter>
map <leader>f :Files<Enter>
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

" https://github.com/junegunn/fzf.vim#user-content-mappings
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

let g:fzf_preview_window = ['right,50%', 'ctrl-\']
