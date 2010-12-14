" Vim syntax file
" Language:     hg commit file
" Maintainer:   Phil Dixon <phil@dixon.gen.nz>
" Filename:     hg-editor-*.txt

if exists("b:current_syntax")
    finish
endif

syn case match
syn sync minlines=50

if has("spell")
    syn spell toplevel
endif

syn match   hgcommitFirstLine   "\%^.*" nextgroup=hgcommitBlank skipnl
syn match   hgcommitSummary     "^.\{0,50\}" contained containedin=hgcommitFirstLine nextgroup=hgcommitOverflow contains=@Spell
syn match   hgcommitOverflow    ".*" contained contains=@Spell
syn match   hgcommitBlank       "^\(HG:\)\@!.*" contained contains=@Spell
syn match   hgcommitComment     "^\(HG:\).*"

hi def link hgcommitSummary     Keyword
hi def link hgcommitComment     Comment
"hi def link hgcommitOverflow   Error
hi def link hgcommitBlank      Error

let b:current_syntax = "hgcommit"

