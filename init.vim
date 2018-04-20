call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()

syntax on
filetype plugin indent on

set backspace=2   " Backspace deletes like most programs in insert mode
set cursorline
set number
set list

set hidden " Allow switching buffer even if some changes are unsaved.

" Softtabs, 2 spaces.
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make it obvious where 100 characters is
set textwidth=100
set colorcolumn=+1

set spell spelllang=en_us
set spellcapcheck=""

set termguicolors

let g:powerline_pycmd="py3"
let g:airline_powerline_fonts = 1

" Gruvbox
set background=dark
let g:gruvbox_contrast_light="hard"
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=0
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
let g:gruvbox_undercurl=1
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

" YCM
let g:ycm_confirm_extra_conf = 0
