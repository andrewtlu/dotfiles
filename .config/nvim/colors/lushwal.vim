set background=dark
if exists('g:colors_name')
hi clear
if exists('syntax_on')
syntax reset
endif
endif
let g:colors_name = 'lushwal'
highlight Normal guifg=#D4C3A0 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight! link User Normal
highlight Bold guifg=#D4C3A0 guibg=#292929 guisp=NONE blend=NONE gui=bold
highlight Boolean guifg=#D06125 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Character guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight ColorColumn guifg=#978878 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Comment guifg=#A89985 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight Conceal guifg=#918273 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight! link Whitespace Conceal
highlight Conditional guifg=#968FC7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Constant guifg=#D06125 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Cursor guifg=#292929 guibg=#D4C3A0 guisp=NONE blend=NONE gui=NONE
highlight CursorColumn guifg=#978878 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight CursorLineNr guifg=#A89985 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight Debug guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Define guifg=#968FC7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Delimiter guifg=#C92626 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticError guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticHint guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticInfo guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#CD231D guibg=NONE guisp=#CD231D blend=NONE gui=underline
highlight DiagnosticUnderlineHint guifg=#689C6A guibg=NONE guisp=#689C6A blend=NONE gui=underline
highlight DiagnosticUnderlineInfo guifg=#448488 guibg=NONE guisp=#448488 blend=NONE gui=underline
highlight DiagnosticUnderlineWarn guifg=#D89B22 guibg=NONE guisp=#D89B22 blend=NONE gui=underline
highlight DiagnosticWarn guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffAdd guifg=#99991A guibg=#918273 guisp=NONE blend=NONE gui=bold
highlight! link DiffAdded DiffAdd
highlight DiffChange guifg=#A0917E guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight DiffDelete guifg=#CD231D guibg=#918273 guisp=NONE blend=NONE gui=bold
highlight! link DiffRemoved DiffDelete
highlight! link diffRemoved DiffDelete
highlight DiffFile guifg=#CD231D guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight DiffLine guifg=#448488 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight DiffNewFile guifg=#99991A guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight DiffText guifg=#448488 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight EndOfBuffer guifg=#D4C3A0 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight Error guifg=#CD231D guibg=#EBDBB2 guisp=NONE blend=NONE gui=NONE
highlight ErrorMsg guifg=#CD231D guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight Exception guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Float guifg=#D06125 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight FoldColumn guifg=#448488 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight Folded guifg=#A89985 guibg=#918273 guisp=NONE blend=NONE gui=italic
highlight Function guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Identifier guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight IncSearch guifg=#918273 guibg=#D06125 guisp=NONE blend=NONE gui=NONE
highlight Include guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Italic guifg=#D4C3A0 guibg=#292929 guisp=NONE blend=NONE gui=italic
highlight Keyword guifg=#968FC7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Label guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LineNr guifg=#A0917E guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight Macro guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MatchParen guifg=#D4C3A0 guibg=#A0917E guisp=NONE blend=NONE gui=NONE
highlight MiniCompletionActiveParameter guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniCursorword guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight! link MiniCursorwordCurrent MiniCursorword
highlight MiniIndentscopePrefix guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=nocombine
highlight MiniIndentscopeSymbol guifg=#918273 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight MiniJump guifg=#448488 guibg=NONE guisp=#A0917E blend=NONE gui=underline
highlight MiniJump2dSpot guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight MiniStarterCurrent guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterFooter guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterHeader guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterInactive guifg=#A89985 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight MiniStarterItem guifg=#D4C3A0 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemBullet guifg=#C92626 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemPrefix guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterQuery guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterSection guifg=#C92626 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineDevinfo guifg=#A89985 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFileinfo guifg=#A89985 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFilename guifg=#D89B22 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineInactive guifg=#978878 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeCommand guifg=#292929 guibg=#689C6A guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeInsert guifg=#292929 guibg=#448488 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeNormal guifg=#292929 guibg=#99991A guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeOther guifg=#292929 guibg=#968FC7 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeReplace guifg=#292929 guibg=#CD231D guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeVisual guifg=#292929 guibg=#D06125 guisp=NONE blend=NONE gui=NONE
highlight MiniSurround guifg=#918273 guibg=#D06125 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineCurrent guifg=#A0917E guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineFill guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniTablineHidden guifg=#99991A guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedCurrent guifg=#A89985 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedHidden guifg=#978878 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedVisible guifg=#A89985 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineVisible guifg=#A0917E guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight MiniTestEmphasis guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestFail guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestPass guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTrailspace guifg=#CD231D guibg=#EBDBB2 guisp=NONE blend=NONE gui=NONE
highlight ModeMsg guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MoreMsg guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NonText guifg=#A0917E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Number guifg=#D06125 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Operator guifg=#D4C3A0 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PMenu guifg=#A89985 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight PMenuSel guifg=#D4C3A0 guibg=#448488 guisp=NONE blend=NONE gui=NONE
highlight PmenuSbar guifg=#978878 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PmenuThumb guifg=#D4C3A0 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Question guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Repeat guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Search guifg=#A0917E guibg=#D89B22 guisp=NONE blend=NONE gui=NONE
highlight! link MiniTablineTabpagesection Search
highlight SignColumn guifg=#978878 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialChar guifg=#C92626 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialKey guifg=#A0917E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpellBad guifg=#CD231D guibg=NONE guisp=#CD231D blend=NONE gui=underline
highlight SpellCap guifg=#D89B22 guibg=NONE guisp=#D89B22 blend=NONE gui=underline
highlight SpellLocal guifg=#689C6A guibg=NONE guisp=#689C6A blend=NONE gui=underline
highlight SpellRare guifg=#968FC7 guibg=NONE guisp=#968FC7 blend=NONE gui=underline
highlight Statement guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight StatusLine guifg=#A89985 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight StatusLineNC guifg=#978878 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight StatusLineTerm guifg=#B8BA26 guibg=#99991A guisp=NONE blend=NONE gui=NONE
highlight StatusLineTermNC guifg=#FABD2E guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight StorageClass guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight String guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Structure guifg=#968FC7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TabLine guifg=#A0917E guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight TabLineFill guifg=#A0917E guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight TabLineSel guifg=#99991A guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight Tag guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Title guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight Todo guifg=#D89B22 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight TooLong guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Type guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Typedef guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Underlined guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight VertSplit guifg=#A89985 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight! link WinSeparator VertSplit
highlight Visual guifg=#292929 guibg=#978878 guisp=NONE blend=NONE gui=NONE
highlight VisualNOS guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WarningMsg guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WildMenu guifg=#D4C3A0 guibg=#448488 guisp=NONE blend=NONE gui=NONE
highlight WinBar guifg=#A89985 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight WinBarNC guifg=#978878 guibg=#292929 guisp=NONE blend=NONE gui=NONE
highlight gitCommitOverflow guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight gitCommitSummary guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpCommand guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpExample guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @attribute guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @boolean guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character.special guifg=#C92626 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @comment guifg=#A89985 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @conditional guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.builtin guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.macro guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constructor guifg=#D4C3A0 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @debug guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @define guifg=#968FC7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @exception guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @field guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @float guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.builtin guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.macro guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @include guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword guifg=#968FC7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.function guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.operator guifg=#968FC7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @label guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @method guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @namespace guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @none guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @number guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @operator guifg=#D4C3A0 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @parameter guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @preproc guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @property guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.bracket guifg=#D4C3A0 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.delimiter guifg=#D4C3A0 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.special guifg=#8EC07C guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @repeat guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @storageclass guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.escape guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.regex guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.special guifg=#C92626 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @symbol guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.attribute guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.delimiter guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.bold guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.danger guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.diff.add guifg=#99991A guibg=#918273 guisp=NONE blend=NONE gui=bold
highlight @text.diff.delete guifg=#CD231D guibg=#918273 guisp=NONE blend=NONE gui=bold
highlight @text.emphasis guifg=#968FC7 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @text.environment guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.environment.name guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.literal guifg=#99991A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.math guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.note guifg=#689C6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.reference guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.strike guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=strikethrough
highlight @text.title guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.todo guifg=#D89B22 guibg=#918273 guisp=NONE blend=NONE gui=NONE
highlight @text.underline guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight @text.uri guifg=NONE guibg=#918273 guisp=NONE blend=NONE gui=underline
highlight @type guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.builtin guifg=#448488 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.definition guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable guifg=#D89B22 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable.builtin guifg=#CD231D guibg=NONE guisp=NONE blend=NONE gui=NONE
