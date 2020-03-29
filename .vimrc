" Mikael Henriksson .vimrc for the vim editor.
" Updated: 2018-01-14
" Updated: 2018-09-03
" Updated: 2019-09-10 - Took some things from Meng Wang. Thank you boy!

" --- Vundle package manager for Vim ---
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'agude/vim-eldar'
Plugin 'tpope/vim-repeat'
Plugin 'svermeulen/vim-easyclip'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf'
Plugin 'powerline/powerline-fonts'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nachumk/systemverilog.vim'

call vundle#end()
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
colorscheme gruvbox 
