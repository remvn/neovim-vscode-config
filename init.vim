" ----------------
" General settings
" ----------------

language en_US
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

if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

" ----------------
" Plugins
" ----------------

call plug#begin('~/AppData/Local/nvim/plugged')

    Plug 'navarasu/onedark.nvim'
    Plug 'tpope/vim-surround'

    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme onedark

" ----------------
" Extend files
" ----------------

runtime settings/common_keymap.vim