Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

let NERDTreeHijackNetw = 0
let NERDTreeShowHidden=1
nnoremap <expr> <Leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'
nmap <Leader>N :NERDTreeFind<cr>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" close the nerdtree when file is open
" let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
