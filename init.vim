" Install Vim Plug

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------
" General settings
" ----------------

language en_US.utf8
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

" Enable copying from vim to clipboard 

" if has('win32')
"  set clipboard=unnamed  
" else
"  set clipboard=unnamedplus
" endif

" ----------------
" Plugins
" ----------------

call plug#begin()

    Plug 'navarasu/onedark.nvim'
    Plug 'tpope/vim-surround'

    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
	
	Plug 'wellle/targets.vim'

call plug#end()

colorscheme onedark

" ----------------
" Extend files
" ----------------

runtime settings/common_keymap.vim