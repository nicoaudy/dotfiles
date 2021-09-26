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
set lazyredraw
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
"set list listchars=tab:»·,trail:·

set autowrite
" Copy paste enabled
set pastetoggle=<F2>
set clipboard=unnamed

set timeoutlen=1000
set ttimeoutlen=0

"---------------------
"
" SplitManagement
"
"---------------------
set splitbelow
set splitright

" Quick jumping between splits
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Open new splits easily
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
map Q  <C-W>q

"Maps Alt-[h,j,k,l] to resizing a window split
map <silent> sH <C-w><
map <silent> sJ <C-W>-
map <silent> sK <C-W>+
map <silent> sL <C-w>>

"---------------------
"
" VISUALS
"
"---------------------

" favorite scheme :
" PaperColor, dracula, industry, deep-space,
" minimalist, bold-contrast, hybrid, gruvbox, desert, focuspoint
" purify, coffee, dogrun, flattened_light, hybrid_reverse, purify
" nuvola, summerfruit256, github-light, xcodedark, jumper
set background=dark
colorscheme night-owl

set linespace=15
set number
set numberwidth=4
set showmatch

" gui options
if (has('termguicolors'))
  set termguicolors

	set background=dark
  colorscheme night-owl

  " Gui option
  hi LineNr guibg=bg
  set guifont=Dank\ Mono:h13
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Use 256 colors. This is the useful for terminal vim.
set t_CO=256

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

" ----- romgrk/barbar.nvim settings -----
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

" ----- fzf/fzf.vim settings -----
map <C-P> :Files<CR>
map <C-G> :GFiles<CR>
map <C-B>b :Buffers<CR>

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
let g:ale_open_list = 0  					" Disabled popup👧
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
\   'colorscheme': 'nightowl',
\   'active': {
\     'left': [
\       [ 'mode', 'paste' ],
\       [ 'fugitive', 'readonly', 'filename', 'modified' ]
\     ],
\     'right': [
\       [ 'battery', 'filetype' ]
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
\     'battery': 'battery#component'
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

let g:battery#component_format = '%s %v%% '

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


let g:coc_global_extensions = ['coc-json', 'coc-prettier', 'coc-vetur', 'coc-phpls', 'coc-css', 'coc-html', 'coc-highlight', 'coc-emmet', 'coc-snippets', 'coc-lists',  'coc-tsserver', 'coc-snippets', 'coc-go', 'coc-rls', 'coc-prisma']

let g:coc_snippet_next = '<tab>'

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

function! PutTermPanel(buf, side, size) abort
  " new term if no buffer
  if a:buf == 0
    term
  else
    execute "sp" bufname(a:buf)
  endif
  " default side if wrong argument
  if stridx("hjklHJKL", a:side) == -1
    execute "wincmd" "J"
  else
    execute "wincmd" a:side
  endif
  " horizontal split resize
  if stridx("jkJK", a:side) >= 0
    if ! a:size > 0
      resize 6
    else
      execute "resize" a:size
    endif
    return
  endif
  " vertical split resize
  if stridx("hlHL", a:side) >= 0
    if ! a:size > 0
      vertical resize 6
    else
      execute "vertical resize" a:size
    endif
  endif
endfunction

function! s:ToggleTerminal(side, size) abort
  let tpbl=[]
  let closed = 0
  let tpbl = tabpagebuflist()
  " hide visible terminals
  for buf in filter(range(1, bufnr('$')), 'bufexists(bufname(v:val)) && index(tpbl, v:val)>=0')
    if getbufvar(buf, '&buftype') ==? 'terminal'
      silent execute bufwinnr(buf) . "hide"
      let closed += 1
    endif
  endfor
  if closed > 0
    return
  endif
  " open first hidden terminal
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)<0')
    if getbufvar(buf, '&buftype') ==? 'terminal'
      call PutTermPanel(buf, a:side, a:size)
      return
    endif
  endfor
  " open new terminal
  call PutTermPanel(0, a:side, a:size)
endfunction

" Toggle terminal - bottom
nnoremap <silent> yot :call <SID>ToggleTerminal('J', 6)<CR>

" Toggle terminal - right
nnoremap <silent> yor :call <SID>ToggleTerminal('L', 60)<CR>
:tnoremap <Esc> <C-\><C-n>