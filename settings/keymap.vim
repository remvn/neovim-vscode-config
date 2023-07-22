let mapleader = ","

if exists('g:vscode')
else
	" remap esc
	inoremap jk <Esc>
endif

" faster scroll
nnoremap <C-j> 5j
nnoremap <C-k> 5k

" remap ^ and $
noremap <C-h> ^
noremap <C-l> $

" no yank at x
nnoremap x "_x

" add blank line in normal mode
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

nnoremap <C-a> ggVG

" move highlighting lines, doesn't work properly in vscode
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv

" yank to system register
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
vnoremap <leader>y "+y

" tag modifying
nnoremap <leader>taa vato<Esc>f>i<space>
nnoremap <leader>paa vi)<Esc>a,<space>
vnoremap <leader>rep :s/\%V\%V/
