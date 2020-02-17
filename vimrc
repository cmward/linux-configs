set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'vim-syntastic/syntastic'
Plugin 'dylanaraps/wal'
Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'psf/black'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set t_ut=
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='medium'

set encoding=utf-8

let mapleader=","

set hidden
set number
set relativenumber
set updatetime=300  " let tagbar update faster

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab

syntax on
set backspace=indent,eol,start
set nrformats-=octal
set autoread
set showcmd

" Searching
set ignorecase
set smartcase
set incsearch

" Tough love
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move up and down by visual, not file, lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'


" Recognize .md files as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

let python_highlight_all=1

" Vimwiki path
let g:vimwiki_list = [{'path': '/Users/chris/Documents/vimwiki'}]

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" airline config
set noshowmode
set laststatus=2
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

" jedi
let g:jedi#popup_on_dot = 1
let g:jedi#show_call_signatures = 2

" syntastic
" set statusline+=%#warningmsg#
" set statusline+={SyntasticStatusLineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_python_pylint_args = '-E'

" ALE
let g:ale_linters = {'python': ['pylint']}
let g:ale_python_pylint_options = '-E --rcfile=~/.pylintrc'

" tagbar
let g:tagbar_width = 30
let g:tagbar_sort = 0
