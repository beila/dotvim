" Searching
" http://sontek.net/turning-vim-into-a-modern-python-ide#id16
" + http://superuser.com/a/255054
nmap <leader>a :Ack!
nmap <leader>f :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!"\b<cword>\b"<Enter>

nmap <leader>m :let @/='\<D\?\zs'.expand('<cword>').'\>'<Enter>:Ack! --cmake --make --python --shell "\bD?<cword>\b"<Enter>
