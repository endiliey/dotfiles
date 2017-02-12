"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"git wrapper for vim
Plugin 'tpope/vim-fugitive'

"code folding
Plugin 'tmhedberg/SimpylFold'

"auto-completion
Plugin 'Valloric/YouCompleteMe'

"python syntax checker
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

"colors scheme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"All of my plugins must be added before the following line
call vundle#end()

filetype plugin indent on    " enables filetype detection
let g:SimpylFold_docstring_preview = 1 " see doctstrings for folded code

"autocomplete (to make sure autocomplete window goes away)
let g:ycm_autoclose_preview_window_after_completion=1

"autocomplete (space-g) to go to definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"split layouts
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"--------- Python PEP8 Configuration --------
"Number of spaces that a pre-existing tab is equal to
au BufNewFile,BufRead *.py set tabstop=4

"spaces for indentations
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent

"use UNIX (\n) line endings
au BufNewFile,BufRead *.py set fileformat=unix

"wrap text after certain number of chars
au BufNewFile,BufRead *.py set textwidth=79

"full syntax highlighting
let python_highlight_all=1
syntax on

"set default file encoding to UTF-8
set encoding=utf-8

" line numbering
set nu

"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

"python with virtualenv support
py << EOF
import os.path
import sys
import vim
if 'VIRTUA_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  sys.path.insert(0, project_base_dir)
  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


" Keep indentation level from previous line:
autocmd FileType python set autoindent

" ------- END OF Python Configuration ------ 

" color schemes
syntax enable
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

"enable toggling
call togglebg#map("<F5>")

"I don't like swap files
set noswapfile

" Always show statusline
set laststatus=2
