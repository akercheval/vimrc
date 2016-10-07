set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

:execute pathogen#infect()

" map 'jk' to esc in insert mode
:inoremap jk <esc>

" sets font in gvim to Inconsolata, with non-curly quote marks
:set guifont=Inconsolata-dz\ 11

" color scheme!
:syntax enable
:set background=dark
:colorscheme solarized

" highlights lines that go past the 80 column mark in red
:match ErrorMsg '\%>80v.\+'

" runs python script by hitting backtick twice
:nnoremap <buffer> `` :exec '!python3' shellescape(@%, 1)<cr>

" tabs = 8 spaces
:set expandtab tabstop=4 shiftwidth=8

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
