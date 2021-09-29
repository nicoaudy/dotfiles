filetype off                  " required

call plug#begin('~/.vim/plugged')

" Garam  kehidupan
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'matze/vim-move'
Plug 'terryma/vim-multiple-cursors'
Plug 'romgrk/barbar.nvim'
Plug 'pechorin/any-jump.vim'
Plug 'machakann/vim-sandwich'

" Nvim
Plug 'neomake/neomake'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

" Language Spesific
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'fatih/vim-go'
Plug 'leafgarland/typescript-vim'
Plug 'pantharshit00/vim-prisma'

" Display
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'lambdalisue/battery.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'arzg/vim-colors-xcode'
Plug 'haishanh/night-owl.vim'

" Code Tools
Plug 'SirVer/ultisnips'
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'svelte'] }
Plug 'sheerun/vim-polyglot'

" Pairs
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/MatchTagAlways'

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
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()            " required
filetype plugin indent on    " required
