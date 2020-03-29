" Samuel Erlands .vimrc for the vim editor.
" Base taken from Mikael Henriksson

" --- Vundle package manager for Vim ---
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

filetype plugin indent on

" --- YouCompleteMe settings. ---
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
if v:version < 705
	let g:loaded_youcompleteme = 1
endif
	

" --- Airline settings. ---
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'

" --- Line numbering, toggle with Ctrl+L+L
set number
set relativenumber
nmap <C-L><C-L> :set invrelativenumber<CR>

" --- Clipboard setting
set clipboard=unnamedplus

" --- Open bar.
set laststatus=2

" --- No wrap.
set nowrap

" --- Use whitespaces for tabs ---
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" --- Specialfile treatments ---
autocmd BufEnter *.tcc :setlocal filetype=cpp
autocmd BufEnter *.tpp :setlocal filetype=cpp

" --- Other settings ---
syntax on
set background=dark
colorscheme gruvbox 
