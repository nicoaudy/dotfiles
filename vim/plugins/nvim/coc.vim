Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-@> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

let g:coc_global_extensions = [
    \    'coc-json',
    \    'coc-prettier',
    \    'coc-vetur',
    \    'coc-phpls',
    \    'coc-css',
    \    'coc-html',
    \    'coc-highlight',
    \    'coc-emmet',
    \    'coc-snippets',
    \    'coc-lists',
    \    'coc-tsserver',
    \    'coc-snippets',
    \    'coc-go',
    \    'coc-rls',
    \    'coc-prisma',
    \    'coc-svelte'
  \   ]

let g:coc_snippet_next = '<tab>'

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
