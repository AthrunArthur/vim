set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/syntastic' 
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'command-t'
Bundle 'taglist.vim'
Bundle 'https://github.com/jcf/vim-latex'
" scripts not on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'
" ...

Bundle 'https://github.com/Valloric/YouCompleteMe.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/tpope/vim-fugitive.git'
Bundle 'bling/vim-airline'
Bundle 'https://github.com/rhysd/vim-clang-format.git'

" Bundle 'https://github.com/davidhalter/jedi-vim'
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line
syntax on

 " NERDTree config
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['.*\.o$','.*\.ko$','.*\.pyc$'] 
set laststatus=2
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Show_One_File = 1  
let Tlist_Use_Right_Window = 1 
let Tlist_Exit_OnlyWindow = 1 
set cindent
set shiftwidth=2
set expandtab
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
