source $LOCAL_ADMIN_SCRIPTS/master.vimrc

"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"colors scheme
Plugin 'altercation/vim-colors-solarized'

"status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"vim javascript"
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

"nerd tree"
Plugin 'scrooloose/nerdtree'

"All of my plugins must be added before the following line
call vundle#end()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-H> <C-W><C-H>

""split layouts
set splitbelow
set splitright

"Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with the spacebar
nnoremap <space> za

"line numbering
set nu

"Eliminating tabs
syn match tab display "\t"
hi link tab Error

" js indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set textwidth=79

" solarized color schemes
syntax enable
set background=dark
let g:solarized_visibility="high"
let g:solarized_contrast="high"
colorscheme solarized

"I don't like swap files
set noswapfile

" Always show statusline
set laststatus=2

"jsx highlighting for .js file"
let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1

"Eliminating tabs
syn match tab display "\t"
hi link tab Error

"Highlighting text past 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"TBGS
source /home/engshare/admin/scripts/vim/biggrep.vim

"nerd tree automatically start
"autocmd vimenter * NERDTree
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :NERDTreeFind<CR>

"PHP autocompletion
let g:hack#omnifunc=1
autocmd BufNewFile,BufRead *.php setl omnifunc=hackcomplete#Complete
