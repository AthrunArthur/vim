set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'tpope/vim-rails.git'
Plugin 'scrooloose/syntastic' 
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'command-t'
Plugin 'taglist.vim'
Plugin 'https://github.com/jcf/vim-latex'
" scripts not on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'
Plugin 'https://github.com/rhysd/vim-clang-format.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on
syntax enable
colorscheme github 
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
