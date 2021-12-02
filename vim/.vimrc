set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable

" VIM CONFIG.
"
let mapleader=','

set encoding=utf-8
set backspace=indent,eol,start
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
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
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

"Disable arrow key
noremap <up> :echo "🙅 use k instead!"<CR>
noremap <down> :echo "🙅 use j instead!"<CR>
noremap <left> :echo "🙅 use h instead!"<CR>
noremap <right> :echo "🙅 use l instead!"<CR>

"---------------------
"
" VISUALS
"
"---------------------

" favorite scheme :
" PaperColor, dracula, industry, deep-space,
" minimalist, bold-contrast, hybrid, gruvbox, desert, focuspoint
" purify, coffee, dogrun, flattened_light, hybrid_reverse, purify
" night-owl, github-light, xcodedark, jumper
set background=dark
colorscheme one

set linespace=15
set number
set numberwidth=4
set showmatch

" gui options
if (has('termguicolors'))
  set termguicolors

	set background=dark
  colorscheme one

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

"https://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 | "sort -n | cut -d\\ -f2-" }'<cr>

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