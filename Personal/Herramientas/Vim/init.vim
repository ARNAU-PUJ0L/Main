syntax on 
set number
set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set rnu
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors

call plug#begin('~/.local/share/nvim/plugged')

"visual
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'


"Funcionality
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'


"Sintaxis
Plug 'vim-python/python-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'mattn/emmet-vim'

"Themes-Plug's
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'

call plug#end()

"Theme-configuration
set background=dark
let ayucolor="dark"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

"letra lider
let mapleader = ","

"Actualizar init
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>


"Abrir innit
nnoremap <leader>e :e $MYVIMRC<CR>

"Guardar
nnoremap <leader>w :w<CR>

"salir sin guardar
nnoremap <leader>q :q<CR>

"Salir y guardar
nnoremap <leader>ñ :wq<CR>

"Abrir terminal
vnoremap <c-t> :split<CR>:ter<CR>
nnoremap <c-t> :split<CR>:ter<CR>

"Resize window
nnoremap <c-right> :vertical resize +5<CR>
nnoremap <c-left> :vertical resize 5<CR>
nnoremap <c-up> :resize +5<CR>
nnoremap <c-down> :resize -5<CR>

"Moverser entre pestañas 
nnoremap <leader>j :bnext<CR> 
nnoremap <leader>k :bprevious<CR>

"borrar pestaña
nnoremap <c-q> :bdelete<CR>

"nueva pestaña
nnoremap <leader>t :tabe<CR> 

"navegador ficheros
nmap <leader>c :NERDTree<CR>

"easy-motion configure
nmap <leader>f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1


