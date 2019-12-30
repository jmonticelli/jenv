"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A minimalistic .vimrc file, to provide the bare essentials for a smooth vim
" session. Should be compatible with Vim or Nvim.
"
" (C) 2019 Julian Monticelli
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Ignore casing when searching, except when an uppercase character is present
set ignorecase
set smartcase

" Indentation done right
set autoindent
set smartindent

" Tabs should be spaces for universally readable alignment
set expandtab
set tabstop=4
set shiftwidth=4


" Stolen from Martin Tournoij from StackExchange
" Trims excess whitespace before writing a buffer
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()
