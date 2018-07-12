call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox' " Theme
Plug 'vim-airline/vim-airline' " Status line
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file search
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' } " Completion framework
Plug '907th/vim-auto-save' " Autosave file

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

" Split navigation.
nnoremap <C-Down>   <C-W><C-J>
nnoremap <C-Up>     <C-W><C-K>
nnoremap <C-Right>  <C-W><C-L>
nnoremap <C-Left>   <C-W><C-H>

" Split creation.
" window
nnoremap <A-Left>  :topleft  vnew<CR>
nnoremap <A-Right> :botright vnew<CR>
nnoremap <A-Up>    :topleft  new<CR>
nnoremap <A-Down>  :botright new<CR>
" buffer
nnoremap <A-S-Left>   :leftabove  vnew<CR>
nnoremap <A-S-Right>  :rightbelow vnew<CR>
nnoremap <A-S-Up>     :leftabove  new<CR>
nnoremap <A-S-Down>   :rightbelow new<CR>

" CTRLP
let g:ctrlp_custom_ignore = 'build\|git\|vscode'

" Powerline
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

" Auto save
let g:auto_save = 1
