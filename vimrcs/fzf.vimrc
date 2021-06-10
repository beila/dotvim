map <leader>F :Files<Enter>
map <leader>f :GFiles<Enter>
map <leader>g :Rg <C-R>=expand("<cword>")<Enter><Enter>
map <leader>G :Rg <C-R>+<Enter>
map <leader>' :BLines<Enter>
map <leader>t :Tags<Enter>
map <c-]> :Tags <C-R>=expand("<cword>")<Enter><Enter>
map <F8> :BTags<Enter>
map <leader>m :Marks<Enter>
map <leader>b :History<Enter>
map <leader>; :History:<Enter>
map <leader>/ :History/<Enter>
map <leader>l :BCommits<Enter>
map <leader>c :Commands<Enter>



command! -bang -nargs=* Rgi
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --no-ignore '.<q-args>, 1,
  \   fzf#vim#with_preview(), <bang>0)

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
