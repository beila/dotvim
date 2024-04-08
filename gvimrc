if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set lines=100 columns=999
    map <C-q> <esc>:wqa!<Enter>
endif
