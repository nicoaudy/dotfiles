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
colorscheme gruvbox

set linespace=15
set number
set numberwidth=4
set showmatch

" gui options
if (has('termguicolors'))
  set termguicolors

	set background=dark
  colorscheme gruvbox

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