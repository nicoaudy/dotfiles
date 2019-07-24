set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable

set encoding=utf-8
set backspace=indent,eol,start				"Make backspace	behave like every other editor.
let mapleader = ','					"The default leader is \, but a comma is much better.
set number						"Let's activate line numbers.
set noswapfile
set noerrorbells visualbell t_vb=			"No damn Bells.
set complete=.,w,b,u                                    "Set our desired autocompletion matchin.
set autoindent                  			"always set autoindenting on
set copyindent                  			"copy the previous indentation on autoindenting
set ignorecase                  			"ignore case when searching
set smartcase                   			"ignore case if search pattern is all lowercase,
set mouse=a
set laststatus=2   					" Always show the statusline
set cursorline
set relativenumber
set tags=tags
set tags+=tags,tags.vendors

inoremap jj <Esc>
imap jj <Esc>
cmap jj <c-c>
vmap v <Esc>

nnoremap ;; :w<cr>					" Better save file
inoremap ;; <C-c>:w<cr>

noremap <Leader>y "*y 					" Yank to clipboard
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

set list listchars=tab:»·,trail:·			" Display extra whitespace

" Switch between the last two files
nnoremap <leader><leader> <c-^>
set autowrite

set pastetoggle=<F2>
set clipboard=unnamed


"-----------Visuals----------"
"favorite scheme PaperColor, deep-space, dracula, industry, deep-space, minimalist
set background=dark
colorscheme hybrid_material
set linespace=15
set t_CO=256						"Use 256 colors. This is the useful for terminal vim.
set guifont=Monaco:h13

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi LineNr guibg=bg



"-----------Plugins----------"						
             
"/
"/ Ctrl P
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,result:30'

"/
"/ NerdTree
"/
let NERDTreeHijackNetw = 0
let NERDTreeShowHidden=1
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

"/
"/ Autotags
"/
let g:autotagTagsFile=".tags"

"/
"/ PHP namespace
"/
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

"/
"/ Emmet
"/
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall
let g:user_emmet_leader_key='<Leader>z'

"/
"/ AlwaysTagMatch
"/
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'javascript.jsx' : 1,
    \ 'javascript' : 1,
    \}

"/
"/ Utilsnips
"/
let g:UltiSnipsExpandTrigger="<tab>"

"/
"/ Prettier
"/
" when running at every change you may want to disable quickfix
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"-----------Split-Management----------"			" ctrl W \ to full split, ctrl W = to normal split
set splitbelow
set splitright


"-----------Mappings----------"
nmap <Leader>ev :tabe $MYVIMRC<cr>					"Open vimrc easily.
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>ep :tabe ~/.vim/plugins.vim<cr>

nmap <Leader><space> :nohlsearch<cr>					"Delete hightlight search.
nmap <Leader>` :NERDTreeToggle<cr>
nmap <Leader>f :tag<space>


"-----------Search----------"
set hlsearch
set incsearch

set wildignore+=*/vendor/**

"-----------Auto-Commands----------"
augroup autosourcing					"Automatically source the vimrc file on save.
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType vue setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType html setlocal tabstop=4 softtabstop=4 shiftwidth=4

" Indent line 
let g:indentLine_char_list = ['|', '¦', '┆', '┊'] 

" Vim move 
let g:move_key_modifier = 'C'

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
autocmd FileType html,css,javascript,jsx EmmetInstall
