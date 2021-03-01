let g:ackprg = 'rg --vimgrep'

" Searching
" http://sontek.net/turning-vim-into-a-modern-python-ide#id16
" + http://superuser.com/a/255054
"nmap <leader>a :Ack!

nmap <leader>g :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-L "\b<cword>\b"<Enter>
vmap <leader>g :<C-U>let @/='\<<C-R>*\>'<Enter>:<C-U>Ack!-L "<C-R>*"<Enter>
nmap <leader>G :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-L "\b

nmap <leader>x :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-L "\b<cword>\b" --no-ignore<Enter>
vmap <leader>x :<C-U>let @/='\<<C-R>*\>'<Enter>:<C-U>Ack!-L "<C-R>*" --no-ignore<Enter>
nmap <leader>X :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-L --no-ignore "\b
