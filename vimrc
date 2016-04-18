syntax on
filetype plugin indent on
set number 
set colorcolumn=80

set wildmenu            " visual autocomplete for cmd menu
set lazyredraw          " redraw only when needed

" Backspace
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Searching
set ignorecase
set incsearch           " search whilst entering
set hlsearch            " highlight matches

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=ident    " fold based on indent level

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
