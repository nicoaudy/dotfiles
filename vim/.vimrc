"       Personal vim configuration of @nicoaudy

"
"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------
let mapleader=','

syntax enable

set nocompatible              " be iMproved, required
set encoding=utf-8
set backspace=indent,eol,start
set number
set noswapfile
set noerrorbells visualbell t_vb=
set complete=.,w,b,u
set autoindent
set copyindent
set ignorecase
set smartcase
set mouse=a
set laststatus=2
set cursorline
set lazyredraw
set relativenumber
set binary
set noeol
set hlsearch
set incsearch
set wildignore+="*/vendor/**"
set nostartofline
set showmode
set title
set showcmd
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
set autowrite
set pastetoggle=<F2>
set clipboard=unnamed
set timeoutlen=1000
set ttimeoutlen=0
set list listchars=tab:»·,trail:· " Display extra whitespace.
if exists("&relativenumber")
    set relativenumber
    au BufReadPost * set relativenumber
endif

"
"--------------------------------------------------------------------------
" Plugins, Mappings, Etc
"--------------------------------------------------------------------------
so ~/.vim/plugins.vim
so ~/.vim/settings/terminal.vim
so ~/.vim/settings/split.vim
so ~/.vim/settings/visuals.vim
so ~/.vim/settings/mappings.vim
so ~/.vim/settings/autocommand.vim

"--------------------------------------------------------------------------
" Miscellaneous
"--------------------------------------------------------------------------
augroup FileTypeOverrides
    autocmd!
    " Use '//' instead of '/* */' comments
    autocmd FileType php setlocal commentstring=//%s
    autocmd TermOpen * setlocal nospell
augroup END