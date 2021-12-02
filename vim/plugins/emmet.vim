Plug 'mattn/emmet-vim'

let g:jsx_ext_required = 1
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<Leader>z'
let g:user_emmet_settings={
\ 'javascript' : {
\   'extends' : 'jsx',
\    'default_attributes' : {
\      'label': [{'htmlFor': ' '}],
\      'class': { 'className': ' '},
\    },
\  },
\}

autocmd FileType html,css,php,javascript,jsx,typescript,tsx,eruby,vue EmmetInstall
