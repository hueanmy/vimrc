set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
"Plugin 'valloric/youcompleteme'

"https://github.com/Townk/vim-autoclose/issues/65
Plugin 'townk/vim-autoclose'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
"Plugin 'tpope/vim-rails'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


colorscheme Tomorrow-Night-Bright
set t_Co=256
set number
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
autocmd StdinReadPre * let s:std_in=1
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
if !has("gui_running")
		    set t_Co=256
			    set term=screen-256color
		endif
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  
inoremap { {<CR>}<Esc>ko
let g:AutoClosePairs = {'(': ')', '[': ']', '"': '"', "'": "'"} 
let g:AutoCloseProtectedRegions = ["Comment"] 
let g:ctrlp_working_path_mode = 'rca'
set laststatus=2
set hlsearch
"let g:airline_theme='base16_bright'
let g:airline_theme='raven'
let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
map <C-l> :IndentLinesToggle<CR>
"this follow line is for commenting .cc :)
let mapleader="."
"sudo apt-get install exuberant-ctags
nmap <C-b> :TagbarToggle<CR>
if bufwinnr(1)
      map + <C-W>+
      map - <C-W>-
      map < <C-W><
      map > <C-W>>
endif
set updatetime=1
filetype plugin on
set omnifunc=syntaxcomplete#Complete
