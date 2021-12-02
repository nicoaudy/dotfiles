Plug 'romgrk/barbar.nvim'

" Magic buffer-picking mode
nnoremap <silent> <C-B>s :BufferPick<CR>

" Sort automatically by...
nnoremap <silent> <C-B>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <C-B>bl :BufferOrderByLanguage<CR>

" Move to previous/next
nnoremap <silent>    <C-B>p :BufferPrevious<CR>
nnoremap <silent>    <C-B>n :BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <C-B>< :BufferMovePrevious<CR>
nnoremap <silent>    <C-B>> :BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <C-B>1 :BufferGoto 1<CR>
nnoremap <silent>    <C-B>2 :BufferGoto 2<CR>
nnoremap <silent>    <C-B>3 :BufferGoto 3<CR>
nnoremap <silent>    <C-B>4 :BufferGoto 4<CR>
nnoremap <silent>    <C-B>5 :BufferGoto 5<CR>
nnoremap <silent>    <C-B>6 :BufferGoto 6<CR>
nnoremap <silent>    <C-B>7 :BufferGoto 7<CR>
nnoremap <silent>    <C-B>8 :BufferGoto 8<CR>
nnoremap <silent>    <C-B>9 :BufferLast<CR>

" Close buffer
nnoremap <silent>    <C-B>c :BufferClose<CR>

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

let bufferline.icons = v:false
let bufferline.icon_custom_colors = v:true

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '👉'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30
