let g:ackprg = 'rg --vimgrep'

" Searching
" http://sontek.net/turning-vim-into-a-modern-python-ide#id16
" + http://superuser.com/a/255054
nmap <leader>a :Ack!

nmap <leader>f :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!"\b<cword>\b"<Enter>
nmap <leader>F :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!"\b

nmap <leader>x :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-tc -tcpp "\b<cword>\b"<Enter>
nmap <leader>X :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-tc -tcpp "\b

nmap <leader>c :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-tc -tcpp --ignore-dir=tests --ignore-dir=thirdparty --ignore-dir=generated --ignore-dir=build --ignore-dir=install "\b<cword>\b"<Enter>
nmap <leader>C :let @/='\<'.expand('<cword>').'\>'<Enter>:Ack!-tc -tcpp --ignore-dir=tests --ignore-dir=thirdparty --ignore-dir=generated --ignore-dir=build --ignore-dir=install "\b

nmap <leader>m :let @/='\<D\?\zs'.expand('<cword>').'\>'<Enter>:Ack! -tcmake -tmake -tpy -tsh "\bD?<cword>\b"<Enter>
nmap <leader>M :let @/='\<D\?\zs'.expand('<cword>').'\>'<Enter>:Ack! -tcmake -tmake -tpy -tsh "\bD?
