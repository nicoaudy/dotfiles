filetype off                  " required

call plug#begin('~/.vim/plugged')

" Garam  kehidupan
Plug 'tpope/vim-surround'				"Change surround (cs from to) and delete surround (ds from to), cst for tag
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'aaren/arrowkeyrepurpose'
Plug 'matze/vim-move'
Plug 'terryma/vim-multiple-cursors'

" PHP Related
Plug 'StanAngeloff/php.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'stephpy/vim-php-cs-fixer'

" JS Related
Plug 'leafgarland/typescript-vim'

" Display
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Code Tools
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'prettier/vim-prettier'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Pairs
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/MatchTagAlways'

" Tags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

" Syntax Checking
Plug 'w0rp/ale'

function! Installjshint(info)
  if a:info.status == 'installed' || a:info.force
    !npm install -g jshint
  endif
endfunction
Plug 'scrooloose/syntastic', { 'do': function('Installjshint') }

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Vim etc
Plug 'moll/vim-bbye'

" Neovim Spesific
Plug 'neomake/neomake'

call plug#end()            " required
filetype plugin indent on    " required
