"########################################
"########################################
" Laracasts Light (rainglow)
"
" https://github.com/rainglow/vim
"
" Copyright (c) Dayle Rees.
"########################################
"########################################


"########################################
"# Settings.                            #
"########################################

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "laracasts-light"

"########################################
"# Base Colors.                         #
"########################################

hi Cursor         guifg=#ffffff guibg=#333333 gui=NONE
hi Visual         guifg=#ffffff guibg=#00b1b3 gui=NONE
hi CursorLine     guifg=NONE guibg=#ffffff gui=NONE
hi CursorLineNr   guifg=#ffffff guibg=#ededed gui=NONE
hi CursorColumn   guifg=NONE guibg=#ededed gui=NONE
hi ColorColumn    guifg=NONE guibg=#e6e6e6 gui=NONE
hi LineNr         guifg=#ffffff guibg=#f2f2f2 gui=NONE
hi VertSplit      guifg=#ffffff guibg=#ffffff gui=NONE
hi MatchParen     guifg=#ef6733 guibg=NONE gui=underline
hi StatusLine     guifg=#4d545d guibg=#f2f2f2 gui=bold
hi StatusLineNC   guifg=#4d545d guibg=#f2f2f2 gui=NONE
hi Pmenu          guifg=#4d545d guibg=#f2f2f2 gui=NONE
hi PmenuSel       guifg=NONE guibg=#00b1b3 gui=NONE
hi IncSearch      guifg=#4d545d guibg=#c68369 gui=NONE
hi Search         guifg=NONE guibg=NONE gui=underline
hi Directory      guifg=#00b1b3 guibg=NONE gui=NONE
hi Folded         guifg=#41474f guibg=#e6e6e6 gui=NONE
hi Normal         guifg=#4d545d guibg=#ffffff gui=NONE
hi Boolean        guifg=#4d545d guibg=NONE gui=NONE
hi Character      guifg=#98d5d6 guibg=NONE gui=NONE
hi Comment        guifg=#9eacbc guibg=NONE gui=NONE
hi Conditional    guifg=#00b1b3 guibg=NONE gui=NONE
hi Constant       guifg=NONE guibg=NONE gui=NONE
hi Define         guifg=#00b1b3 guibg=NONE gui=NONE
hi DiffAdd        guifg=#ffffff guibg=#a7da1e gui=bold
hi DiffDelete     guifg=#ffffff guibg=#e61f44 gui=NONE
hi DiffChange     guifg=#ffffff guibg=#f7b83d gui=NONE
hi DiffText       guifg=#ffffff guibg=#f7b83d gui=bold
hi ErrorMsg       guifg=#ffffff guibg=#e61f44 gui=NONE
hi WarningMsg     guifg=#ffffff guibg=#f7b83d gui=NONE
hi Float          guifg=#c68369 guibg=NONE gui=NONE
hi Function       guifg=#00b1b3 guibg=NONE gui=NONE
hi Identifier     guifg=#23262b guibg=NONE gui=NONE
hi Keyword        guifg=#00b1b3 guibg=NONE gui=NONE
hi Label          guifg=#98d5d6 guibg=NONE gui=NONE
hi NonText        guifg=#000000 guibg=#fafafa gui=NONE
hi Number         guifg=#c68369 guibg=NONE gui=NONE
hi Operator       guifg=#4d545d guibg=NONE gui=NONE
hi PreProc        guifg=#cbd3db guibg=NONE gui=NONE
hi Special        guifg=#4d545d guibg=NONE gui=NONE
hi SpecialKey     guifg=#4d545d guibg=#00b1b3 gui=NONE
hi Statement      guifg=#00b1b3 guibg=NONE gui=NONE
hi StorageClass   guifg=#ef6733 guibg=NONE gui=NONE
hi String         guifg=#98d5d6 guibg=NONE gui=NONE
hi Tag            guifg=#00b1b3 guibg=NONE gui=NONE
hi Title          guifg=#00b1b3 guibg=NONE gui=bold
hi Todo           guifg=#cbd3db guibg=NONE gui=inverse,bold
hi Type           guifg=NONE guibg=NONE gui=NONE
hi Underlined     guifg=NONE guibg=NONE gui=underline

"########################################
"# Language Overrides                   #
"########################################

hi phpIdentifier     guifg=#23262b
hi phpMethodsVar     guifg=#ffffff
hi xmlTag            guifg=#00b1b3 guibg=NONE gui=NONE
hi xmlTagName        guifg=#00b1b3 guibg=NONE gui=NONE
hi xmlEndTag         guifg=#00b1b3 guibg=NONE gui=NONE

"########################################
"# Light Theme Overrides                #
"########################################

hi CursorLineNr   guifg=#808080 guibg=#cccccc gui=NONE
hi ColorColumn    guifg=NONE guibg=#ffffff gui=NONE
hi LineNr         guifg=#b3b3b3 guibg=#f2f2f2 gui=NONE
hi phpMethodsVar  guifg=#1f2225
hi DiffAdd        guifg=#d9d9d9 guibg=#59a50b gui=bold
hi DiffDelete     guifg=#d9d9d9 guibg=#a30e29 gui=NONE
hi DiffChange     guifg=#d9d9d9 guibg=#c48405 gui=NONE
hi DiffText       guifg=#d9d9d9 guibg=#c48405 gui=bold
hi ErrorMsg       guifg=#d9d9d9 guibg=#a30e29 gui=NONE
hi WarningMsg     guifg=#d9d9d9 guibg=#c48405 gui=NONE
hi Folded         guifg=#59616b guibg=#e6e6e6 gui=NONE
