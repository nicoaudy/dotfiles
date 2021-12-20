"---------------------
"
" AUTOCOMMAND
"
"---------------------

"Go spesific missing import on save
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

"Automatically source the vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePost autocommand.vim source $MYVIMRC
    autocmd BufWritePost plugins.vim source $MYVIMRC
    autocmd BufWritePost mappings.vim source $MYVIMRC
    autocmd BufWritePost split.vim source $MYVIMRC
    autocmd BufWritePost terminal.vim source $MYVIMRC
    autocmd BufWritePost visuals.vim source $MYVIMRC
augroup END

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType go setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType svelte setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType vue setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType html setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2


" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" set filetypes as blade.php as html
autocmd BufNewFile,BufRead *.blade.php set filetype=html