"---------------------
"
" VISUALS
"
"---------------------

" favorite scheme :
" PaperColor, night-owl, xcodedark, jumper,
set background=dark
colorscheme darkplus

set linespace=15
set number
set numberwidth=4
set showmatch

" gui options
if (has('termguicolors'))
  set termguicolors

	set background=dark
  colorscheme darkplus

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