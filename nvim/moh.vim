" Vim color file
" Maintainer:	Mohammed Alhaythm
" Last Change:	2018 10 18

set bg&
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "moh"

hi Pmenu ctermfg=7 ctermbg=0 guifg=White guibg=Black
hi lineNr ctermfg=0 guifg=#000000
hi Number ctermfg=7 guifg=DarkCyan
hi VertSplit ctermbg=Black ctermfg=Black guifg=Black guibg=Green
hi Search cterm=bold ctermfg=Black ctermbg=DarkRed guifg=Black gui=bold guibg=DarkRed
hi Visual ctermfg=7 ctermbg=18 cterm=NONE
hi MatchParen cterm=bold ctermbg=NONE ctermfg=Red
hi Error ctermfg=7 ctermbg=19 guifg=Black guibg=DarkRed
hi Comment ctermfg=23 guifg=DarkGray
hi Folded ctermfg=7 ctermbg=5
