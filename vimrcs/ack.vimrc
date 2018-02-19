let g:ackprg = 'rg --vimgrep'

" Searching
" http://sontek.net/turning-vim-into-a-modern-python-ide#id16
" + http://superuser.com/a/255054
nmap <leader>a :Ack!

nmap <leader>f :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-L "\b<cword>\b"<Enter>
nmap <leader>F :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-L "\b

nmap <leader>x :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-L "\b<cword>\b" --no-ignore<Enter>
nmap <leader>X :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-L --no-ignore "\b
