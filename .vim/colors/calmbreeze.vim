" Vim colorscheme
" Name:         Calm Breeze
" Maintainer:   Jonas M Luster <j@d8c.us>
" Last Change:  2011-8-7
" Version: 1.0
" Notes: A calming breeze in the heat of code

hi clear
set background=light

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "calmbreeze"

"---GUI settings
hi Default      guifg=#000000   guibg=#FFFCE5
hi SpecialKey   guifg=#000000   guibg=#FFFCE5
hi NonText      guifg=#969696   guibg=#FFFCE5  gui=none
hi Directory    guifg=#78681a
hi ErrorMsg     guifg=#ffffff   guibg=#a01010
hi IncSearch    guifg=#ff0000   guibg=#C3DCFF   gui=none
hi Search       guifg=#ff0000   guibg=#C3DCFF
hi MoreMsg      guifg=#ffffff   guibg=#3c960f   gui=none
hi ModeMsg      guifg=#323232                   gui=none
hi LineNr       guifg=#008C00   guibg=#F9F7ED
hi Question     guifg=#000000   guibg=#ffde37   gui=none
hi StatusLine   guifg=#ffffff   guibg=#323232   gui=none
hi StatusLineNC guifg=#f0f0f0   guibg=#646464   gui=none
hi VertSplit    guifg=#f0f0f0   guibg=#646464   gui=none
hi Title        guifg=#323232                   gui=none
hi Visual       guifg=#ffffff   guibg=#0000AA
hi VisualNOS    guifg=#ffffff   guibg=#0000AA   gui=none
hi WarningMsg   guifg=#c8c8c8   guibg=#a01010
hi WildMenu     guifg=#ffffff   guibg=#1994d1
hi Folded       guifg=#969696   guibg=#f0f0f0
hi FoldColumn   guifg=#969696   guibg=#f0f0f0
hi DiffAdd                      guibg=#deffcd
hi DiffChange                   guibg=#dad7ff
hi DiffDelete   guifg=#c8c8c8   guibg=#ffffff   gui=none
hi DiffText     guifg=#ffffff   guibg=#767396   gui=none
hi SignColumn   guifg=#969696   guibg=#f0f0f0
hi SpellBad     guifg=#000000   guibg=#fff5c3   guisp=#f01818   gui=undercurl
hi SpellCap     guifg=#000000   guibg=#fff5c3   guisp=#14b9c8   gui=undercurl
hi SpellRare    guifg=#000000   guibg=#fff5c3   guisp=#4cbe13   gui=undercurl
hi SpellLocal   guifg=#000000   guibg=#fff5c3   guisp=#000000   gui=undercurl
hi Pmenu        guifg=#000000   guibg=#ececec
hi PmenuSel     guifg=#ffffff   guibg=#006699
hi PmenuSbar    guifg=#323232   guibg=#323232
hi PmenuThumb   guifg=#646464   guibg=#646464   gui=none
hi TabLine      guifg=#f0f0f0   guibg=#646464   gui=none
hi TabLineSel   guifg=#ffffff   guibg=#323232   gui=none
hi TabLineFill  guifg=#646464   guibg=#646464   gui=none
hi CursorColumn                 guibg=#e1f5ff
hi CursorLine                   guibg=#FFFCD4   gui=none  cterm=none     term=none
hi Cursor       guifg=#ffffff   guibg=#323232
hi lCursor      guifg=#ffffff   guibg=#004364
hi MatchParen   guifg=#3F4C6B   guibg=#D15600
hi Normal       guifg=#323232   guibg=#FFFCE5
hi Comment      guifg=#969696 
hi Constant     guifg=#1094a0
hi Special      guifg=#dc6816
hi Identifier   guifg=#3c960f
hi Statement    guifg=#3b6ac8                   gui=none
hi PreProc      guifg=#294a8c
hi Type         guifg=#a00050                   gui=none
hi Underlined   guifg=#323232                   gui=underline
hi Ignore       guifg=#c8c8c8
hi Error        guifg=#000000   guibg=#D01F3C   gui=underline
hi Todo         guifg=#c81414   guibg=#ffffff
