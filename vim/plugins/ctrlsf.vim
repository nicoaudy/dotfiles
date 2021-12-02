Plug 'dyng/ctrlsf.vim'

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_compact_position = 'bottom_inside'
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_auto_close = {
    \ "normal" : 1,
    \ "compact": 1
    \}
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }
