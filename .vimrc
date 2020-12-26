" Samuel Erlands .vimrc
" Updated: 2018-01-14
" Updated: 2018-09-03
" Updated: 2019-09-10 - Took some things from Meng Wang. Thank you boy!
" Updated: 2020-15-10 - Copy from Mikeal, thx! (And made som small changes)
" Updated: 2020-23-11 - Adding nerdtree and cleaning packages
" Updated: 2020-24-11 - Added visincr

" --- Vundle package manager for Vim ---
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Remember: run :PluginInstall
Plugin 'VundleVim/Vundle.vim' " Required for Vundle too work
Plugin 'svermeulen/vim-easyclip' " Making the clipboard better
Plugin 'morhetz/gruvbox' " Nice color scheme
Plugin 'vim-airline/vim-airline' " Statusbar 
Plugin 'vim-airline/vim-airline-themes' " Statusbar themes
Plugin 'nachumk/systemverilog.vim' " System verilog intendention and syntax scripts
Plugin 'preservim/nerdtree' " File tree
Plugin 'exvim/ex-visincr' " Collum incrase/decrease of numbers
Plugin 'neoclide/coc.nvim'

call vundle#end()
filetype plugin indent on

" --- Set leader
let mapleader = " "

" --- Enable true colors ---
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" --- Airline settings. ---
let g:airline_powerline_fonts = 0 
let g:airline_theme = 'seagull'

" --- Line numbering 
set number
set relativenumber
nmap <leader>l :set invrelativenumber<CR>

" --- Small commands
" Add a line above and enter normal mode
nmap <C-k> O<ESc>
" Add a line below and enter normal mode
nmap <C-j> o<ESc>

" --- Clipboard setting
set clipboard=unnamedplus

" --- Open bar.
set laststatus=2

" --- Basics.
syntax on
set nowrap
set smartindent
set incsearch " Search word before hiting enter
set smartcase " No case senetive search until uppercase is enterd
set colorcolumn=80

" --- Split control
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright 

" --- Nerdtree settings.
nnoremap <leader>e :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeShowLineNumbers=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" --- Use whitespaces for tabs ---
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" --- Theme ---
set background=dark
colorscheme gruvbox

" --- Coc-settings
source ~/config/coc_config.vim
