" scroll buffer at top and bottom
set scrolloff=6
" tab size of 4
set tabstop=4

syntax on
set colorcolumn=81
let c_space_errors=1

" colour theme
" https://github.com/the31k/vim-colors-tayra
colors tayra
" set 256 colour mode
set t_Co=256

"clear background
hi Normal guibg=NONE ctermbg=NONE

"auto call functions
autocmd VimEnter * call SetExpandTab()
autocmd VimEnter * call SetSpellCheck()

"set expand tab on all but speficied file types
function! SetExpandTab()
    if (&filetype!='make')
        set expandtab
    endif
endfunction

"sets spellcheck on text(nofile type) and gitcommit files
function! SetSpellCheck()
    if (&filetype=='' || &filetype=='gitcommit' || &filetype=='tex')
        setlocal spell spelllang=en_ca
    endif
endfunction

