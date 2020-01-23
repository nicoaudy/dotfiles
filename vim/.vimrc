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
"Split Management
set splitbelow
set splitright

"---------------------
"
" VISUALS
"
"---------------------

" favorite scheme :
" PaperColor, deep-space, dracula, industry, deep-space,
" minimalist, bold-contrast, hybrid, gruvbox
" set background=dark
colorscheme material
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
set guifont=Operator\ Mono\ Book\ Italic:h13
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
nmap <Leader>ev :tabe $MYVIMRC<cr>
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
let g:material_terminal_italics = 1

" ----- ctrlpvim/ctrlp.vim settings -----
" let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|vendor)|(\.(swp|ico|git|svn))$'
" let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,result:30'

" ----- fzf/fzf.vim settings -----
map <leader>f :Files<CR>
map <C-P> :GFiles<CR>
map <C-B> :Buffer<CR>

" ----- scrooloose/nerdtree settings -----
let NERDTreeHijackNetw = 0
let NERDTreeShowHidden=1
nmap <Leader>` :NERDTreeToggle<cr>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" ----- arnaud-lb/vim-php-namespace settings -----
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>
let g:php_namespace_sort_after_insert = 1

"https://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 | "sort -n | cut -d\\ -f2-" }'<cr>

" ----- mattn/emmet-vim settings -----
let g:user_emmet_install_global = 0
autocmd FileType html,css,php,javascript,jsx,eruby EmmetInstall
let g:user_emmet_leader_key='<Leader>z'

" ----- Valloric/MatchTagAlways settings -----
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'javascript.jsx' : 1,
    \ 'javascript' : 1,
    \}

" ----- SirVer/ultisnips settings -----
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ----- prettier/vim-prettier settings -----
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

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
  \}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_linters = {
\   'php': ['php'],
\}

command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>

" ----- stephpy/vim-php-cs-fixer settings -----
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

" ----- vim-syntastic/syntastic settings -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_quiet_messages={'level': 'warnings'}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- vim-airline/vim-airline settings  REMOVED Replace with lightline-----
" base16_isotope
" let g:airline_theme='base16_isotope'
" let g:airline#extensions#hunks#enabled=0
" let g:airline#extensions#branch#enabled=1
" let g:airline#extensions#ale#enabled=1
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#buffer_nr_show=1
" let g:airline#extensions#hunks#non_zero_only = 1

" ----- itchyny/lightline settings -----
let g:lightline = {
\   'colorscheme': 'one',
\   'active': {
\     'left':[[ 'mode', 'paste' ],
\             [ 'fugitive', 'readonly', 'filename', 'modified' ]]
\   },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\   },
\   'component_function': {
\     'fugitive': 'LightlineFugitive',
\     'readonly': 'LightlineReadonly',
\     'modified': 'LightlineModified',
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
    if exists('*fugitive#head')
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
" In vim-airline, only display "hunks" if the diff is non-zero

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

" Make capslock to escape
" au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'