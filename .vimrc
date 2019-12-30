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

" Make sure that we automatically change our directory when editing a
" different file. Nothing is more annoying than expecting to be running
" commands from the directory of the file you're editing, and finding out that
" you're not even close to where that is.
set autochdir

" Stolen from Martin Tournoij from StackExchange
" Trims excess whitespace before writing a buffer
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()
