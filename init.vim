function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

language en_US.utf8

if !exists('g:vscode')
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
endif

" plugins

call plug#begin()
	" only in normal vim
    Plug 'navarasu/onedark.nvim', Cond(!exists('g:vscode'))
    Plug 'vim-airline/vim-airline', Cond(!exists('g:vscode'))
    Plug 'vim-airline/vim-airline-themes', Cond(!exists('g:vscode'))
	Plug 'mattn/emmet-vim', Cond(!exists('g:vscode'))
	Plug 'ThePrimeagen/vim-be-good', Cond(!exists('g:vscode'))
	
	" Plug 'AndrewRadev/splitjoin.vim'
	" Plug 'andymass/vim-matchup'
	Plug 'tpope/vim-surround'
	Plug 'wellle/targets.vim'
	" Plug 'kana/vim-textobj-user'
	" Plug 'Julian/vim-textobj-variable-segment'
	Plug 'chaoren/vim-wordmotion'
call plug#end()

let g:wordmotion_prefix = ','

if !exists('g:vscode')
	let g:matchup_surround_enabled = 1
	colorscheme onedark
endif

" require files
runtime settings/keymap.vim