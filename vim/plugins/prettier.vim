Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': [
      \ 'javascript',
      \ 'typescript',
      \ 'css',
      \ 'scss',
      \ 'json',
      \ 'graphql',
      \ 'markdown',
      \ 'vue',
      \ 'yaml',
      \ 'html',
      \ 'svelte'
  \ ] }

let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.svelte PrettierAsync
