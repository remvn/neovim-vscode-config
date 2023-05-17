if exists('g:vscode')
else
	" Remap esc
	inoremap jk <Esc>
endif

" faster scroll
nnoremap <C-j> 5j^
nnoremap <C-k> 5k^

" Remap ^ and $
noremap <C-h> ^
noremap <C-l> $

" No yank at x
nnoremap x "_x

" tag modifying
nnoremap <leader>aa vato<Esc>f>i<space>
