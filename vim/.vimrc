set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable

" VIM CONFIG.
"
set encoding=utf-8
set backspace=indent,eol,start
let mapleader=','
set number
set noswapfile
set noerrorbells visualbell t_vb=
set complete=.,w,b,u
set autoindent
set copyindent
set ignorecase
set smartcase
set mouse=a
set laststatus=2
set cursorline
set relativenumber
set binary
set noeol
set hlsearch
set incsearch
set wildignore+="*/vendor/**"
set nostartofline
set showmode
set title
set showcmd
if exists("&relativenumber")
    set relativenumber
    au BufReadPost * set relativenumber
endif
" Display extra whitespace.
set list listchars=tab:»·,trail:·
set autowrite
" Copy paste enabled
set pastetoggle=<F2>
set clipboard=unnamed

"---------------------
"
" SplitManagement
"
"---------------------
set splitbelow
set splitright

" Quick jumping between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Open new splits easily
map vv <C-W>v
map ss <C-W>s
map Q  <C-W>q

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <Leader>h <C-w><
map <silent> <Leader>j <C-W>-
map <silent> <Leader>k <C-W>+
map <silent> <Leader>l <C-w>>

"---------------------
"
" VISUALS
"
"---------------------

" favorite scheme :
" PaperColor, deep-space, dracula, industry, deep-space,
" minimalist, bold-contrast, hybrid, gruvbox, desert
set background=dark
colorscheme focuspoint
set linespace=15

if (has('termguicolors'))
  set termguicolors
endif

" let g:impact_transbg=1
" hi Normal guibg=NONE ctermbg=NONE

" Use 256 colors. This is the useful for terminal vim.
set t_CO=256

" Gui option
hi LineNr guibg=bg
set guifont=Dank\ Mono:h13
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Indent line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Vim move
let g:move_key_modifier = 'C'


"---------------------
"
" MAPPINGS
"
"---------------------

inoremap jj <Esc>
imap jj <Esc>
cmap jj <c-c>
vmap v <Esc>

" Better save file
nnoremap ;; :w<cr>
inoremap ;; <C-c>:w<cr>
nnoremap <Leader>q :q!<cr>
inoremap <Leader>q <C-c>:q!<cr>

" Yank to clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Switch window
noremap <Leader>w <C-w>w

""Open vimrc easily.
nmap <Leader>ev :tabe ~/.vimrc<cr>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>ep :tabe ~/.vim/plugins.vim<cr>

"Delete hightlight search.
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>f :tag<space>


"---------------------
"
" PLUGINS CONFIG
"
"---------------------

" ----- kaicataldo/material.vim settings -----
let g:material_theme_style = 'palenight'

" ----- fzf/fzf.vim settings -----
map <leader>f :Files<CR>
map <C-P> :GFiles<CR>
map <C-B> :Buffer<CR>

" ----- scrooloose/nerdtree settings -----
let NERDTreeHijackNetw = 0
let NERDTreeShowHidden=1
nmap <Leader>` :NERDTreeToggle<cr>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" close the nerdtree when file is open
" let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"https://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 | "sort -n | cut -d\\ -f2-" }'<cr>

" ----- mattn/emmet-vim settings -----
let g:user_emmet_install_global = 0
autocmd FileType html,css,php,javascript,jsx,typescript,tsx,eruby,vue EmmetInstall
let g:user_emmet_leader_key='<Leader>z'

" ----- Valloric/MatchTagAlways settings -----
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'javascript.jsx' : 1,
    \ 'javascript' : 1,
    \}

" ----- SirVer/ultisnips settings -----
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ----- prettier/vim-prettier settings -----
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" ----- moll/vim-bbye settings -----
:nnoremap <Leader><Leader>q :Bdelete<CR>
:nnoremap <Leader><Leader>w :Bwipeout<CR>

" ----- w0rp/ale settings -----
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_keep_list_window_open=0
let g:ale_set_quickfix=0
let g:ale_list_window_size = 5
let g:ale_php_phpcbf_standard='PSR2'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
" let g:ale_php_phpcs_standard='phpcs.xml.dist'
" let g:ale_php_phpmd_ruleset='phpmd.xml'
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'php': ['phpcbf', 'php_cs_fixer', 'remove_trailing_lines', 'trim_whitespace'],
  \ 'javascript': ['eslint'],
  \ 'svelte': ['eslint', 'prettier', 'prettier_standard'],
  \}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_linters = {
\   'php': ['php'],
\   'svelte': ['styleling', 'eslint'],
\}

command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>

" ----- stephpy/vim-php-cs-fixer settings -----
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

" ----- vim-syntastic/syntastic settings -----
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_quiet_messages={'level': 'warnings'}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eshint', 'jsxhint', 'jshint']
let g:syntastic_javascript_checkers = ['eshint']

" Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake

" Disable inherited syntastic
let g:syntastic_mode_map = {
  \ "mode": "passive",
  \ "active_filetypes": [],
  \ "passive_filetypes": [] }
let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- itchyny/lightline settings -----
let g:lightline = {
\   'colorscheme': 'deus',
\   'active': {
\     'left': [
\       [ 'mode', 'paste' ],
\       [ 'fugitive', 'readonly', 'filename', 'modified' ]
\     ],
\     'right': [
\       [ 'clock', 'filetype' ]
\     ]
\   },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\   },
\   'component_function': {
\     'fugitive': 'LightlineFugitive',
\     'readonly': 'LightlineReadonly',
\     'modified': 'LightlineModified',
\     'clock': 'LightlineClock',
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

let g:StatuslineUpdateTimer#clockformat = '🕰️  %a, %m/%d %H:%M'
function! LightlineClock()
    return g:StatuslineUpdateTimer#clock()
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

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

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=~/.vimtags,tags;

" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display hunks if the diff is non-zero


" ----- neoclide/coc settings -----
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


let g:coc_global_extensions = ['coc-json', 'coc-prettier', 'coc-vetur', 'coc-phpls', 'coc-css', 'coc-html', 'coc-highlight', 'coc-emmet', 'coc-snippets', 'coc-lists',  'coc-tsserver', 'coc-snippets']

let g:coc_snippet_next = '<tab>'

"---------------------
"
" AUTOCOMMAND
"
"---------------------

"Automatically source the vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType vue setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType html setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2


" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" Lightline
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

let g:jsx_ext_required = 1
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<leader>z'
let g:user_emmet_settings={
\ 'javascript' : {
\   'extends' : 'jsx',
\    'default_attributes' : {
\      'label': [{'htmlFor': ' '}],
\      'class': { 'className': ' '},
\    },
\  },
\}

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction