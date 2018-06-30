" map 'jk' to esc in insert mode
:inoremap jk <esc>

" sets font in gvim to Iosevka
:set guifont=Iosevka\ 12.5

" color scheme!
:syntax enable
:set background=dark
:colorscheme alocasia

" highlights lines that go past the 80 column mark in red
":match ErrorMsg '\%>80v.\+'

" runs python script by hitting backtick twice
:nnoremap <buffer> `` :exec '!python3' shellescape(@%, 1)<cr>

" tabs = 8 spaces
:set expandtab tabstop=4 shiftwidth=4

" I'm annoyed by Syntastic, so now zi toggles it.
:nnoremap zi :SyntasticToggleMode<cr>

" maps 'eee' to the python utf-8 encoding comment, 
" but is possibly not necessary anymore
":inoremap <buffer> eee #!/usr/bin/env python<cr># -*- coding: utf-8 -*-<cr>

" silences visual and audio alerts
:set visualbell
:set t_vb=

" toggles highlighting from a search with F3
nnoremap <F3> :set hlsearch!<CR>

" allows you to execute shell commands by hitting ! instead of :!
nnoremap ! :!

" disable auto folding
set nofoldenable 

" hide menu, toolbar, scrollbar
:set go-=m
:set go-=T
:set go-=r

" map space bar to case insensitive search
:nnoremap <space> :/\c

" natural copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
