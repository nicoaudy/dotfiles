Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

" ----- stephpy/vim-php-cs-fixer settings -----
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
