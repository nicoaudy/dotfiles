Plug 'neomake/neomake'

let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

" Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake
