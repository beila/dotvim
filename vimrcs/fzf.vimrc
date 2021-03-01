" https://stackoverflow.com/a/3098685
:function! SomeCheck()
:   if filereadable("/usr/local/opt/fzf/plugin/fzf.vim")
:       runtime! /usr/local/opt/fzf/plugin/fzf.vim
:   endif
:endfunction
