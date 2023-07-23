let mapleader = ","

if exists('g:vscode')
else
	" remap esc
	inoremap jk <Esc>
endif

" faster scroll
nnoremap <C-j> 5j
nnoremap <C-k> 5k

" must use gu or gU in visual mode
vnoremap u <nop>
vnoremap U <nop>

" remap ^ and $
noremap <C-h> ^
noremap <C-l> $

" no yank at x
nnoremap x "_x

" add blank line without leaving normal mode
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" select all
nnoremap <C-a> ggVG

" move highlighting lines
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" yank to system register
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
vnoremap <leader>y "+y

" tag modifying
nnoremap <leader>taa vato<Esc>f>i<space>
nnoremap <leader>paa vi)<Esc>a,<space>
vnoremap <leader>rep :s/\%V\%V/

" vscode actions
noremap <leader>sa <Cmd>call VSCodeNotify('editor.action.sourceAction')<CR>
noremap <leader>ca <Cmd>call VSCodeNotify('editor.action.codeAction')<CR>
noremap <leader>rts <Cmd>call VSCodeNotify('typescript.restartTsServer')<CR>
xnoremap <leader>bm <Cmd>call VSCodeCall('editor.action.blockComment')<CR><Esc>
nnoremap <leader>bm <Cmd>call VSCodeCall('editor.action.blockComment')<CR>