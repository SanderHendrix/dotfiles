syntax on
filetype plugin indent on
set number
set colorcolumn=80
set backspace=indent,eol,start

" Managing those pesky tabs and spaces
" Standard tab equals four spaces
set shiftwidth=4
set softtabstop=4
set expandtab
" Toggle between tab being 4 spaces (Python ed)
" and an actual tab of eight columns (Linux kernel style)
function ToggleTab()
    if &expandtab
        set shiftwidth=8
        set softtabstop=0
        set noexpandtab
    else
        set shiftwidth=4
        set softtabstop=4
        set expandtab
    endif
endfunction
