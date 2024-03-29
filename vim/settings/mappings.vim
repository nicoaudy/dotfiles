"---------------------
"
" MAPPINGS
"
"---------------------

" 🔥 Open current selected file
map gf :edit <cfile><cr>

"Disable arrow key
noremap <up> :echo "🙅 use k instead!"<CR>
noremap <down> :echo "🙅 use j instead!"<CR>
noremap <left> :echo "🙅 use h instead!"<CR>
noremap <right> :echo "🙅 use l instead!"<CR>

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
nmap <Leader>es :tabe ~/.vim/settings/visuals.vim<cr>
nmap <Leader>ea :tabe ~/.vim/settings/autocommand.vim<cr>
nmap <Leader>em :tabe ~/.vim/settings/mappings.vim<cr>
nmap <Leader>ep :tabe ~/.vim/plugins.vim<cr>

"Delete hightlight search.
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>f :tag<space>

" https://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 <bar> "sort -n <bar> cut -d\\  -f2-" }'<cr>