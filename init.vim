function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

language en_US.utf8
	
if exists('g:vscode')
    " VSCode extension
	
else
    " ordinary Neovim
	
	" install vim plug
	let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
	if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
	
	" settings
	set number 
	set relativenumber
	set mouse=a
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set smarttab
	set expandtab
	set autoindent
	set list
	set encoding=UTF-8
	syntax on
	
	" enable copying from vim to clipboard 
	" if has('win32')
	"  set clipboard=unnamed  
	" else
	"  set clipboard=unnamedplus
	" endif
endif


" Plugins

call plug#begin()
    Plug 'navarasu/onedark.nvim', Cond(!exists('g:vscode'))

    " Status bar
    Plug 'vim-airline/vim-airline', Cond(!exists('g:vscode'))
    Plug 'vim-airline/vim-airline-themes', Cond(!exists('g:vscode'))
	
	Plug 'tpope/vim-surround'
	Plug 'wellle/targets.vim'
call plug#end()

if exists('g:vscode')
    " VSCode extension
else
    " ordinary Neovim
	colorscheme onedark
endif

" Extend files

runtime settings/common_keymap.vim