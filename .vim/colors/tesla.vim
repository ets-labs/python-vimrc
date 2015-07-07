" =============================================================================
" Vim color file (tesla.vim)
"    Maintainer: clericJ
"   Last Change: 2012 Jul 4
"       Version: 1.7
" =============================================================================

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "tesla"

" =============================================================================
" Main
" =============================================================================

hi Normal                       guibg=#192636           guifg=#8ac6f2
hi Cursor                       guibg=red               guifg=white
hi lCursor                      guibg=MediumPurple3
hi CursorLine                   guibg=#353545
hi CursorColumn                 guibg=MidnightBlue
hi ColorColumn                  guibg=#1d2a3a           gui=none
hi MatchParen                   guibg=blue              guifg=white

hi DiffAdd                      guibg=DarkBlue
hi DiffChange                   guibg=#005124
hi DiffDelete   gui=none        guibg=#604800           guifg=gray10
hi DiffText     gui=none        guibg=#731600

hi Directory    gui=none        guifg=LightBlue
hi Error        guibg=#432323   guifg=white
hi ErrorMsg                     guibg=red               guifg=White
hi FoldColumn                   guibg=#2D3A48   guifg=LightGray
hi Folded                       guibg=#2D3A48             guifg=gray
hi IncSearch    gui=reverse     guibg=white             guifg=Goldenrod4
hi LineNr                       guibg=#303f4f           guifg=gray
hi ModeMsg      gui=bold
hi MoreMsg      gui=bold                                guifg=LightBlue
hi SpecialKey                                           guifg=#394c56
hi NonText      gui=bold        guibg=#192636           guifg=azure4
hi Pmenu                        guibg=#303f4f           guifg=white
hi PmenuSel                     guibg=#6c7b8b           guifg=white
hi PmenuSbar                    guibg=gray60            guifg=azure3
hi PmenuThumb                                           guifg=azure2
hi Question     gui=none                                guifg=green
hi SignColumn                   guibg=#2D3A48
hi Search       gui=italic      guibg=#46676d           guifg=white
hi StatusLine   gui=none        guibg=#2e3d4d           guifg=white
hi StatusLineNC gui=none        guibg=#2e3d4d           guifg=DarkGray
hi Title        gui=bold        guibg=#192636           guifg=AliceBlue
hi VertSplit                    guibg=#2e3d4d           guifg=#2e3d4d
hi Visual       gui=reverse     guibg=white             guifg=#2F3F4F
hi VisualNOS    gui=underline,bold
hi WarningMsg                                           guifg=red
hi WildMenu     gui=bold        guibg=#303f4f           guifg=white
hi Todo         gui=none        guibg=DarkRed           guifg=AliceBlue

" =============================================================================
" Status-line user colors
" =============================================================================

"hi User1        gui=bold        guifg=white             guibg=LightSteelBlue4
"hi User2        gui=none        guifg=white             guibg=LightSteelBlue4
"hi User3        gui=none        guifg=white             guibg=#303f4f
"hi User4        gui=none        guifg=white             guibg=DarkRed

" =============================================================================
" Change cursor color in different modes
" =============================================================================

hi Cursor                       guibg=DodgerBlue3       guifg=white
hi iCursor                      guibg=red               guifg=white

set guicursor=n-v-c:block-Cursor
set guicursor+=i-ci:ver15-iCursor

" =============================================================================
" Syntax highlighting
" =============================================================================

hi Comment          gui=none                        guifg=LightSteelBlue4
hi Constant         gui=none                        guifg=LightGray
hi String           gui=none                        guifg=plum3
hi Number           gui=none                        guifg=aquamarine2
hi Boolean          gui=none                        guifg=aquamarine2
hi Float            gui=none                        guifg=aquamarine2
hi Identifier       gui=none                        guifg=aquamarine2
hi PreProc          gui=none                        guifg=#4fc6ff
hi Function         gui=none                        guifg=#4fc6ff
hi Special          gui=none guibg=#192636          guifg=#d775f1
hi Statement        gui=none                        guifg=white
hi Type             gui=none                        guifg=#10CC10
hi SpecialComment   gui=none                        guifg=DarkRed

" =============================================================================
" Python extended syntax file highlighting
" =============================================================================

hi PythonBuiltin     gui=none                        guifg=aquamarine2
hi pythonBuiltinObj  gui=none                        guifg=aquamarine2
hi pythonDecorator   gui=none                        guifg=aquamarine2
hi pythonBuiltinFunc gui=none                        guifg=#4fc6ff
hi link pythonOperator  Statement

" =============================================================================
" Taglist Plugin
" =============================================================================
"
hi MyTagListFileName   gui=none        guibg=#192636           guifg=white

" =============================================================================
