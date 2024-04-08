if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set lines=100 columns=999
    map <C-q> <esc>:wqa!<Enter>
    if has('nvim')
        set guifont=Anonymous\ Pro:h11
    else
        set guifont=Anonymous\ Pro\ 11
    endif

endif
