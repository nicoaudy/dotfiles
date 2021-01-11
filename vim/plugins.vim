filetype off                  " required

call plug#begin('~/.vim/plugged')

" Garam  kehidupan
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'aaren/arrowkeyrepurpose'
Plug 'matze/vim-move'
Plug 'terryma/vim-multiple-cursors'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'pechorin/any-jump.vim'
Plug 'machakann/vim-sandwich'

" PHP Related
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

" JS Related
Plug 'leafgarland/typescript-vim'

" Display
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'lambdalisue/battery.vim'

" Colorscheme
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-scripts/nuvola.vim'
Plug 'vim-scripts/summerfruit256.vim'
Plug 'arzg/vim-colors-xcode'

" Code Tools
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'svelte'] }
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'rhysd/git-messenger.vim'

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
Plug 'Xuyuanp/nerdtree-git-plugin'

" Vim etc
Plug 'moll/vim-bbye'

" Neovim Spesific
Plug 'neomake/neomake'

" Unused
" Plug 'kaicataldo/material.vim'
" Plug 'tsuyoshicho/StatuslineUpdateTimer.vim'
" Plug 'tpope/vim-fugitive'

call plug#end()            " required
filetype plugin indent on    " required
