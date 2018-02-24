set nu
set hls
set cursorline
set ruler
set ts=4 sw=4 st=4
set expandtab
set autoindent
set smartindent

colorscheme desert
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_exit_onlyWindow=1
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
set ignorecase
set smartcase


highlight Pmenu    guibg=black guifg=Mediumslateblue
highlight PmenuSel guibg=black guifg=Lightcoral
highlight Pmenu    guibg=black ctermbg=Darkblue
highlight PmenuSel guibg=black ctermbg=Red

" When switching buffers, preserve window view.
if v:version >= 700
  au BufLeave * if !&diff | let b:winview = winsaveview() | endif
  au BufEnter * if exists('b:winview') && !&diff | call winrestview(b:winview) | unlet! b:winview | endif
endif

let g:LookupFile_MinPatLength = 1
"let g:LookupFile_PreserveLastPattern = 0
"let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_AllowNewFiles = 0

if filereadable("./filenametags")
    let g:LookupFile_TagExpr = '"./filenametags"'
endif
