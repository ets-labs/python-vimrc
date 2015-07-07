" ------------------------------------------------------------------
" Vim color file
" Name: moss (苔)
" Maintainer: Li Chunlin <yeiicn!gmail.com>
" Last Change: 2011-11-11
" Version: 2.2
" URL: http://vim.sourceforge.net/script.php?script_id=2779
" ------------------------------------------------------------------

" Init
" ------------------------------------------------------------------
set background=dark
highlight clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name = "moss"

if has("gui_running")
    " Highlighting groups for various occasions
    " ------------------------------------------------------------------
    hi SpecialKey   guifg=RosyBrown3
    hi NonText      guifg=MidnightBlue guibg=#092628
    hi Directory    gui=BOLD guifg=DarkOliveGreen2
    hi ErrorMsg     guifg=LightGoldenRod guibg=Firebrick
    hi IncSearch    gui=BOLD guifg=Firebrick1
    hi Search       gui=REVERSE guifg=NONE guibg=NONE
    hi MoreMsg      guifg=DarkCyan
    hi ModeMsg      guifg=OliveDrab2
    hi LineNr       guifg=DarkSeaGreen2 guibg=#092628
    hi Question     guifg=Green
    hi StatusLine   gui=BOLD guifg=LemonChiffon2 guibg=#334680
    hi StatusLineNC gui=BOLD guifg=Honeydew3 guibg=Gray22
    hi VertSplit    gui=BOLD guifg=#062926 guibg=Gray22
    hi Title        gui=BOLD guifg=RoyalBlue2
    hi Visual       guifg=Black guibg=DarkTurquoise
    hi VisualNOS    gui=BOLD,UNDERLINE guifg=SlateGray3
    hi WarningMsg   guifg=Gold
    hi WildMenu     gui=BOLD guifg=Black guibg=LimeGreen
    hi Folded       guifg=PaleGreen2 guibg=DarkSlateGray
    hi FoldColumn   gui=BOLD guifg=PaleGreen2 guibg=DarkSlateGray
    hi DiffAdd      guifg=SandyBrown guibg=DarkOliveGreen
    hi DiffChange   guibg=#3C444C
    hi DiffDelete   guifg=Gray30 guibg=Black
    hi DiffText     guifg=Chocolate guibg=#033B40

    " new Vim 7.0 items
    if v:version >= 700
       hi CursorColumn guibg=#063C36
       hi CursorLine   guibg=#063C36
       hi SignColumn   guifg=PaleGoldenrod  guibg=Turquoise4
       hi TabLine      guifg=CornflowerBlue guibg=Gray26
       hi TabLineSel   guifg=RoyalBlue guibg=#062926
       hi TabLineFill  gui=UNDERLINE guifg=CornflowerBlue guibg=Gray20
       hi Pmenu        guifg=Gray   guibg=MediumPurple4
       hi PmenuSel     guifg=Wheat  guibg=Maroon4
       hi PmenuSbar    guifg=Tan    guibg=SeaShell4
       hi PmenuThumb   guifg=Tomato guibg=SeaShell4
       hi MatchParen   gui=BOLD guifg=GoldenRod guibg=DarkCyan
    endif

    hi Cursor       guifg=Black guibg=Green
    hi CursorIM     guifg=Black guibg=OrangeRed

    " Syntax highlighting groups
    " ------------------------------------------------------------------

    hi Normal      gui=NONE guifg=PowderBlue guibg=#062926
    hi Comment     gui=ITALIC guifg=BurlyWood4

    hi Constant    gui=NONE guifg=CadetBlue2
    hi link        String    Constant
    hi link        Character Constant
    hi Number      gui=NONE guifg=Aquamarine2
    hi link        Boolean Number
    hi link        Float   Number

    hi Identifier  gui=NONE guifg=SteelBlue2
    hi Function    gui=NONE guifg=Turquoise2

    hi Statement   gui=NONE guifg=SeaGreen2
    hi link        Conditional Statement
    hi link        Repeat      Statement
    hi link        Label       Statement
    hi Operator    gui=NONE guifg=SpringGreen2
    hi link        Keyword     Statement
    hi link        Exception   Statement

    hi PreProc     gui=NONE guifg=DodgerBlue2
    hi link        Include   PreProc
    hi link        Define    PreProc
    hi link        Macro     PreProc
    hi link        PreCondit PreProc

    hi Type        gui=NONE guifg=DeepSkyBlue2
    hi link        StorageClass Type
    hi link        Structure    Type
    hi link        Typedef      Type

    hi Special     gui=NONE guifg=SlateBlue2
    hi link        Specialchar Special
    hi link        Tag         Special
    hi link        Delimiter   Special
    hi link        Debug       Special

    hi Underlined  gui=UNDERLINE guifg=SkyBlue2
    hi Ignore      gui=NONE guifg=Gray24
    hi Error       gui=NONE guifg=Khaki2 guibg=VioletRed4
    hi Todo        gui=BOLD guifg=GoldenRod2 guibg=NONE

endif
