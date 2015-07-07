" Vim color File
" Name:			biogoo
" Maintainer:	Benjamin Esham <bdesham@gmail.com>
" Last Change:	2011-02-28
" Version:		1.6.2
" Website:		https://github.com/bdesham/biogoo
"
" A color scheme for Vim with colorful text on a light gray background.
"
" Installation:
"	Copy to ~/.vim/colors; do :color biogoo
"
" Customization Options:
"	Use a 'normal' cursor color:
"		let g:biogoo_normal_cursor = 1
"
" For a full README and version history, see the website given above.

set background=light
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "biogoo"

hi Comment			guifg=#0000c3
hi ColorColumn		guibg=#e0e0e0
hi Constant			guifg=#0000ff
hi CursorColumn		guibg=#ffffff
hi CursorLine		guibg=#ffffff
hi Delimiter		guifg=#00007f
hi DiffAdd			guifg=#007f00 guibg=#e5e5e5
hi DiffChange		guifg=#00007f guibg=#e5e5e5
hi DiffDelete		guifg=#7f0000 guibg=#e5e5e5
hi DiffText			guifg=#ee0000 guibg=#e5e5e5
hi Directory		guifg=#b85d00
hi Error			guifg=#d6d6d6 guibg=#7f0000
hi ErrorMsg			guifg=#ffffff guibg=#ff0000 gui=bold
hi Float			guifg=#b85d00
hi FoldColumn		guifg=#00007f guibg=#e5e5e5
hi Folded			guifg=#00007f guibg=#e5e5e5
hi Function			guifg=#7f0000
hi Identifier		guifg=#004000
hi Include			guifg=#295498 gui=bold
hi IncSearch		guifg=#ffffff guibg=#0000ff gui=bold
hi LineNr			guifg=#303030 guibg=#e5e5e5 gui=underline
hi Keyword			guifg=#00007f
hi Macro			guifg=#295498
hi MatchParen		guifg=#ffffff guibg=#00a000
hi ModeMsg			guifg=#00007f
hi MoreMsg			guifg=#00007f
hi NonText			guifg=#007f00
hi Normal			guifg=#000000 guibg=#d6d6d6
hi Number			guifg=#b85d00
hi Operator			guifg=#00007f
hi Pmenu			guifg=#000000 guibg=#cc9999
hi PmenuSel			guifg=#ffffff guibg=#993333
hi PmenuSbar		guibg=#99cc99
hi PmenuThumb		guifg=#339933
hi PreCondit		guifg=#295498 gui=bold
hi PreProc			guifg=#0c3b6b gui=bold
hi Question			guifg=#00007f
hi Search			guibg=#ffff00
hi Special			guifg=#007f00
hi SpecialKey		guifg=#00007f
hi SpellBad			guifg=#7f0000 guibg=#f0f0f0 gui=undercurl guisp=#7f0000
hi SpellCap			guifg=#7f007f guibg=#f0f0f0 gui=undercurl guisp=#7f007f
hi SpellLocal		guifg=#007f7f guibg=#f0f0f0 gui=undercurl guisp=#007f7f
hi SpellRare		guifg=#b85d00 guibg=#f0f0f0 gui=undercurl guisp=#b85d00
hi Statement		guifg=#00007f gui=none
hi StatusLine		guifg=#00007f guibg=#ffffff
hi StatusLineNC		guifg=#676767 guibg=#ffffff
hi String			guifg=#d10000
hi TabLine			guifg=#222222 guibg=#d6d6d6
hi TabLineFill		guifg=#d6d6d6
hi TabLineSel		guifg=#00007f guibg=#eeeeee gui=bold
hi Title			guifg=#404040 gui=bold
hi Todo				guifg=#00007f guibg=#e5e5e5 gui=underline
hi Type				guifg=#540054 gui=bold
hi Underlined		guifg=#b85d00
hi VertSplit		guifg=#676767 guibg=#ffffff
if version < 700
	hi Visual		guifg=#7f7f7f guibg=#ffffff
else
	hi Visual		guifg=#ffffff guibg=#7f7f7f
endif
hi VisualNOS		guifg=#007f00 guibg=#e5e5e5
hi WarningMsg		guifg=#500000
hi WildMenu			guifg=#540054

" Non-standard highlighting (e.g. for plugins)

" vimspell
hi SpellErrors		guibg=#f0f0f0 guifg=#7f0000 gui=undercurl guisp=#7f0000

if !exists("g:biogoo_normal_cursor")
	" use a gray-on-blue cursor
	hi Cursor		guifg=#ffffff guibg=#00007f
endif

" vim:noet:ts=4 tw=80 cc=+1
