filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Garam  kehidupan
Plugin 'tpope/vim-vinegar'				"Use - for see current file folder, shift 5 for create file, d new directory, D for delete.
Plugin 'tpope/vim-surround'				"Change surround (cs from to) and delete surround (ds from to), cst for tag
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'aaren/arrowkeyrepurpose'
Plugin 'matze/vim-move'
Plugin 'ervandew/supertab'

" PHP Related
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'

" JS Related
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'leafgarland/typescript-vim'
Plugin 'epilande/vim-react-snippets'

" Display
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'rainglow/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-startify'

" Code Tools
Plugin 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'html', 'css'] }
Plugin 'Yggdroot/indentLine' 
Plugin 'SirVer/ultisnips'
Plugin 'prettier/vim-prettier'
Plugin 'ap/vim-css-color'
Plugin 'sheerun/vim-polyglot'
Plugin 'garbas/vim-snipmate'

" Tag
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/MatchTagAlways'
Plugin 'ludovicchabant/vim-gutentags'

" Syntax Checking
Plugin 'w0rp/ale'

" Vim etc
Plugin 'moll/vim-bbye'

call vundle#end()            " required
filetype plugin indent on    " required
