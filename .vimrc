" scroll buffer at top and bottom
set scrolloff=6
" tabs printed as 4 characters
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" add line numbers
set number

" split new vertical element to right
set splitright

syntax on
set colorcolumn=81
let c_space_errors=1
"let c_no_trail_space_errors=1
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
"let g:filetype_pl="prolog"

"sets spellcheck on text(no file type), gitcommit, and latex files
function! SetSpellCheck()
    if (&filetype=='' || &filetype=='gitcommit' || &filetype=='tex')
        setlocal spell spelllang=en_ca
    endif
endfunction

:autocmd BufRead,BufNewFile */360/* setlocal noexpandtab tabstop=8 softtabstop=0 shiftwidth=8
:autocmd BufRead,BufNewFile */496/* setlocal noexpandtab tabstop=8 softtabstop=0 shiftwidth=8
:autocmd BufRead,BufNewFile */wctf/tools/* setlocal noexpandtab tabstop=8 softtabstop=0 shiftwidth=8

" vim go stuff
let g:go_fmt_command = "goimports"

" vim-plug
" auto install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
