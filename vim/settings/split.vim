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
