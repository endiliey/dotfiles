set nocompatible
syntax enable
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()

" syntax for js
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" color schemes
" let g:solarized_termtrans = 1
" let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" General 
set encoding=utf-8
set number
" use indentation of previous line
set autoindent 
" configure tabwidth and insert spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

set noswapfile
set textwidth=79

autocmd FileType javascript set ts=2 sts=2 sw=2
autocmd FileType cpp set ts=4 sts=4 sw=4

"nerd tree automatically start
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :NERDTreeFind<CR>

" compiling and running program from vim for cpp
map <F8> :!g++ -std=c++11 -Wall -O2 % && ./a.out <CR> 
