" scroll buffer at top and bottom
set scrolloff=6
" tabs printed as 4 characters
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number

syntax on
set colorcolumn=81
let c_space_errors=1
filetype plugin indent on

" colour theme
" https://github.com/the31k/vim-colors-tayra
colors tayra
" set 256 colour mode
set t_Co=256

"clear background
hi Normal guibg=NONE ctermbg=NONE

"auto call functions
autocmd VimEnter * call SetSpellCheck()

"read .pl as prolog
let g:filetype_pl="prolog"

"sets spellcheck on text(nofile type) and gitcommit files
function! SetSpellCheck()
    if (&filetype=='' || &filetype=='gitcommit' || &filetype=='tex')
        setlocal spell spelllang=en_ca
    endif
endfunction

