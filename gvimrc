if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set lines=100 columns=999

    map <C-q> <esc>:wqa!<Enter>

    if has('nvim')
        "set guifont=Anonymous\ Pro:h11
        "set guifont=Ubuntu\ Mono:h10
        "set guifont=NanumGothicCoding:h11
        set guifont=JetBrains\ Mono\ Thin:h11
    else
        "set guifont=Anonymous\ Pro\ 11
        "set guifont=Ubuntu\ Mono\ 10
        "set guifont=NanumGothicCoding\ 12
        set guifont=JetBrains\ Mono\ 12
    endif

endif
