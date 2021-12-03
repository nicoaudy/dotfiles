filetype off                  " required

call plug#begin('~/.vim/plugged')

" Garam  kehidupan
so ~/.vim/plugins/surround.vim
so ~/.vim/plugins/commentary.vim
so ~/.vim/plugins/nerdtree.vim
so ~/.vim/plugins/fzf.vim
so ~/.vim/plugins/move.vim
so ~/.vim/plugins/multiple-cursors.vim
so ~/.vim/plugins/any-jump.vim
so ~/.vim/plugins/sandwich.vim
so ~/.vim/plugins/ctrlsf.vim

" Nvim Spesific
if(has('nvim'))
  so ~/.vim/plugins/nvim/neomake.vim
  so ~/.vim/plugins/nvim/coc.vim
  so ~/.vim/plugins/nvim/barbar.vim
endif

" Language Spesific
so ~/.vim/plugins/php.vim
so ~/.vim/plugins/prisma.vim

" Display
so ~/.vim/plugins/lightline.vim
so ~/.vim/plugins/colorscheme.vim

" Code Tools
so ~/.vim/plugins/ultisnips.vim
so ~/.vim/plugins/indend.vim
so ~/.vim/plugins/css-color.vim
so ~/.vim/plugins/emmet.vim
so ~/.vim/plugins/prettier.vim
so ~/.vim/plugins/polglot.vim

" Pairs
so ~/.vim/plugins/autopairs.vim
so ~/.vim/plugins/match-tag-always.vim

" Syntax Checking
so ~/.vim/plugins/ale.vim
so ~/.vim/plugins/syntastic.vim

" Git
so ~/.vim/plugins/gitgutter.vim

call plug#end()            " required
filetype plugin indent on    " required
