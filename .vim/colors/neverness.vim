" NEVERNESS colour scheme
" Author:      Yann GOLANSKI
" Version:     1.3
" Last Change: 26 Mar 2012
" url http://web.njit.edu/~kevin/rgb.txt.html

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'neverness'

" Comments: grey
hi Comment        ctermfg=DarkCyan     guifg=#848484 guibg=#000000 gui=none 

" Constants: SkyBlue
hi Boolean        ctermfg=117          guifg=#87ceeb guibg=#000000 gui=none
hi Character      ctermfg=117          guifg=#87ceeb guibg=#000000 gui=none
hi Constant       ctermfg=117          guifg=#87ceeb guibg=#000000 gui=none
hi Float          ctermfg=117          guifg=#87ceeb guibg=#000000 gui=none
hi Number         ctermfg=117          guifg=#87ceeb guibg=#000000 gui=none
hi String         ctermfg=117          guifg=#87ceeb guibg=#000000 gui=none

" Identifier: SteelBlue1
hi Identifier     ctermfg=81     guifg=#63b8ff guibg=#000000 gui=none
hi Function       ctermfg=81     guifg=#63b8ff guibg=#000000 gui=none

" Statement: SteelBlue
hi Conditional    ctermfg=67      guifg=#4682b4 guibg=#000000 gui=bold
hi Exception      ctermfg=67      guifg=#4682b4 guibg=#000000 gui=bold
hi Keyword        ctermfg=67      guifg=#4682b4 guibg=#000000 gui=bold
hi Label          ctermfg=67      guifg=#4682b4 guibg=#000000 gui=bold
hi Operator       ctermfg=67      guifg=#4682b4 guibg=#000000 gui=bold
hi Repeat         ctermfg=67      guifg=#4682b4 guibg=#000000 gui=bold
hi Statement      ctermfg=67      guifg=#4682b4 guibg=#000000 gui=bold

" PreProc: DarkOrchid1
hi PreProc        ctermfg=133     guifg=#bf3eff guibg=#000000 gui=none
hi Include        ctermfg=133     guifg=#bf3eff guibg=#000000 gui=none
hi Define         ctermfg=133     guifg=#bf3eff guibg=#000000 gui=none
hi Macro          ctermfg=133     guifg=#bf3eff guibg=#000000 gui=none
hi PreCondit      ctermfg=133     guifg=#bf3eff guibg=#000000 gui=none

" Type: orchid2
hi Type           ctermfg=207     guifg=#ee7ae9 guibg=#000000 gui=bold
hi StorageClass   ctermfg=207     guifg=#ee7ae9 guibg=#000000 gui=bold
hi Structure      ctermfg=207     guifg=#ee7ae9 guibg=#000000 gui=bold
hi Typedef        ctermfg=207     guifg=#ee7ae9 guibg=#000000 gui=bold

" Special: cyan2
hi Special        ctermfg=51      guifg=#00eeee guibg=#000000 gui=none
hi SpecialChar    ctermfg=51      guifg=#00eeee guibg=#000000 gui=none
hi Tag            ctermfg=51      guifg=#00eeee guibg=#000000 gui=none
hi SpecialComment ctermfg=51      guifg=#00eeee guibg=#000000 gui=none
hi Delimiter      ctermfg=51      guifg=#00eeee guibg=#000000 gui=none
hi Debug          ctermfg=51      guifg=#00eeee guibg=#000000 gui=none

" Underline: NavajoWhite2
hi Underlined     ctermfg=144     guifg=#eecfa1 guibg=#000000 gui=none

" Ignore: black
hi Ignore         ctermfg=LightGray     guifg=#ffffff guibg=#000000 gui=none

" Error: red
hi Error          ctermfg=LightGray     guifg=#ff0000 guibg=#232323 gui=bold

" To do: SlateGray3
hi Todo           ctermfg=116     guifg=#9fb6cd guibg=#232323 gui=none

" Spelling...
hi SpellBad    ctermfg=DarkRed      ctermbg=black
hi SpellCap    ctermfg=DarkBlue     ctermbg=black
hi SpellRare   ctermfg=DarkYellow   ctermbg=black
hi SpellLocal  ctermfg=DarkGreen    ctermbg=black

" "set cursorline"  and "set cursorcolumn" options.
hi lCursor        guifg=#43705a guibg=#e6fff3 gui=none
hi CursorColumn   guibg=#222222 gui=none
hi CursorLine     guibg=#222222 gui=none

" Line number.
hi LineNr         ctermfg=DarkMagenta guifg=#2b506e guibg=#000000 
hi CursorLineNr   ctermfg=DarkMagenta term=bold gui=bold guifg=#9FB6CD

" Normal colour: just white thank you.
hi Normal         guifg=#ffffff guibg=#000000 gui=none

" Others:  These are "highlight-groups" and "highlight-default" in help section.
hi Cursor         guifg=#43705a guibg=#e6fff3 gui=none
hi DiffAdd        guifg=#e6fff3 guibg=#43705a gui=bold
hi DiffChange     guifg=#e6fff3 guibg=#43705a gui=none
hi DiffDelete     guifg=#e6fff3 guibg=#43705a gui=none
hi DiffText       guifg=#000000 guibg=#e6fff3 gui=bold
hi Directory      guifg=#e6fff3 guibg=#000000 gui=none
hi ErrorMsg       guifg=#e6fff3 guibg=#61a181 gui=bold
hi FoldColumn     guifg=#9bcfb5 guibg=#43705a gui=bold
hi Folded         guifg=#9bcfb5 guibg=#43705a gui=bold
hi IncSearch      guifg=#1d3026 guibg=#61a181 gui=bold
hi ModeMsg        guifg=#4EEE94 guibg=#000000 gui=bold
hi MoreMsg        guifg=#4EEE94 guibg=#000000 gui=bold
hi NonText        guifg=#c0c0c0 guibg=#000000 gui=bold
hi Question       guifg=#9bcfb5 guibg=#000000 gui=bold
hi Search         guifg=#1d3026 guibg=#61a181 gui=bold
hi SpecialKey     guifg=#9bcfb5 guibg=#000000 gui=none
"hi StatusLine     guifg=#e6fff3 guibg=#61a181 gui=bold
"hi StatusLineNC   guifg=#1d3026 guibg=#61a181 gui=bold
hi StatusLine     guifg=#4EEE94 guibg=#333333 gui=none
hi StatusLineNC   guifg=#4EEE94 guibg=#222222 gui=none
hi Title          guifg=#e6fff3 guibg=#1d3026 gui=bold
hi VertSplit      guifg=#61a181 guibg=#61a181 gui=none
hi Visual         guifg=#e6fff3 guibg=#61a181 gui=none
hi VisualNOS      guifg=#9bcfb5 guibg=#000000 gui=none
hi WarningMsg     guifg=#BF3EFF guibg=#000000 gui=bold
hi WildMenu       guifg=#43705a guibg=#e6fff3 gui=none

" OTL
hi normal guifg=white guibg=black	ctermfg=white ctermbg=black
hi VertSplit guifg=white guibg=black	ctermfg=white ctermbg=black
hi Folded guifg=darkcyan guibg=bg	ctermfg=cyan ctermbg=black
hi FoldColumn guifg=darkcyan guibg=bg	ctermfg=cyan ctermbg=black

hi def OL0 ctermfg=1 cterm=bold gui=bold guifg=#36648B term=reverse
hi def OL1 ctermfg=4 cterm=bold gui=bold guifg=#4682B4 term=reverse
hi def OL2 ctermfg=2 cterm=bold gui=bold guifg=#4F94CD term=reverse
hi def OL3 ctermfg=3 cterm=bold gui=bold guifg=#5CACEE term=reverse
hi def OL4 ctermfg=5 cterm=bold gui=bold guifg=#63B8FF term=reverse
hi def OL5 ctermfg=6 cterm=bold gui=bold guifg=#708090 term=reverse
hi def OL6 ctermfg=1 cterm=bold gui=bold guifg=#6C7B8B term=reverse
hi def OL7 ctermfg=4 cterm=bold gui=bold guifg=#9FB6CD term=reverse
hi def OL8 ctermfg=2 cterm=bold gui=bold guifg=#B9D3EE term=reverse
hi def OL9 ctermfg=3 cterm=bold gui=bold guifg=#C6E2FF term=reverse


" PMenu from Sam Grönblom <sgronblo@gmail.com>
hi PmenuSel    ctermfg=Black ctermbg=Cyan      guifg=#000000 guibg=#87ceeb gui=none
hi Pmenu       ctermfg=White ctermbg=DarkBlue  guifg=#000000 guibg=#4682b4 gui=none
hi PmenuSbar   ctermfg=White ctermbg=LightCyan guifg=#ffffff guibg=#848484 gui=none
hi PmenuThumb  ctermfg=White ctermbg=DarkGreen guifg=#ffffff guibg=#87ceeb gui=none

" email pita.
hi mailEmail ctermfg=Cyan ctermbg=Black 

" Signbar plugin from Hannes Saffrich <hannes.saffrich@uranus.uni-freiburg.de>
hi SignColumn ctermfg=DarkMagenta guifg=#2b506e guibg=#000000
