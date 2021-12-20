Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'


let g:lightline = {
\   'colorscheme': 'nightowl',
\   'active': {
\     'left': [
\       [ 'mode', 'paste' ],
\       [ 'fugitive', 'readonly', 'filename', 'modified' ]
\     ],
\     'right': [
\       [ 'filetype' ]
\     ]
\   },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\   },
\   'component_function': {
\     'fugitive': 'LightlineFugitive',
\     'readonly': 'LightlineReadonly',
\     'modified': 'LightlineModified',
\     'filetype': 'MyFiletype',
\   }
\}
let g:lightline.separator = {
\   'left': '', 'right': ''
\}
let g:lightline.subseparator = {
\   'left': '', 'right': ''
\}
let g:lightline.tabline = {
\   'left': [['buffers']],
\   'right': [['string1'], ['string2']]
\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers'
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel'
\}
let g:lightline#bufferline#unnamed = "[NO NAME]"
let g:lightline#bufferline#filename_modifier= ":."
let g:lightline#bufferline#more_buffers = "..."
let g:lightline#bufferline#modified = " +"
let g:lightline#bufferline#read_only = " -"
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#show_number = 0

function! LightlineModified()
    return &modified ? '●' : ''
endfunction

function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
    if exists('*FugitiveStatusline') || exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction


autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
