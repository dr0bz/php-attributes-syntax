" Vim Syntax File
"
" Language: PHP
" Maintainer: dr0bz
" Version: 0.1
"
" Adds attributes highlighting to php filetype
"

syn keyword phpAttributeBoolean true false containedin=phpAttributeBlock
syn keyword phpAttributeClassKeyword class containedin=phpAttributeBlock
syn match phpAttributeNamedArgument /\w\+\:\s/ containedin=phpAttributeBlock
syn match phpAttributeString /'.\{-}'/ containedin=phpAttributeBlock
syn match phpAttributeNumber /[0-9.]\+/ containedin=phpAttributeBlock
syn case match
syn match phpAttributeConstant /::[A-Z\_]\+/hs=s+2 containedin=phpAttributeBlock
syn match phpAttributeConstant /\\[A-Z\_]\+\>/ containedin=phpAttributeBlock
syn case ignore
syn match phpAttributeClassName /#\[.\+(/hs=s+2,he=e-1 containedin=phpAttributeBlock
syn match phpAttributeFQDN /[\\a-zA-Z_-]\{-}::class/me=e-5 containedin=phpAttributeBlock

syn keyword phpAttributeKeyword new containedin=phpAttributeBlock nextgroup=phpAttributeInitClassName skipwhite
syn match phpAttributeInitClassName /[\\a-zA-Z_-]\{-}(/he=e-1 containedin=phpAttributeBlock

syn region phpAttributeBlock start="#\[" end=")\?]\?)\?]" containedin=phpRegion


hi def link phpAttributeKeyword       Keyword
hi def link phpAttributeClassKeyword  Keyword
hi def link phpAttributeBoolean       Boolean
hi def link phpAttributeNumber        Number
hi def link phpAttributeNamedArgument Normal
hi def link phpAttributeConstant      Constant
hi def link phpAttributeString        String
hi def link phpAttributeBlock         Comment
hi def link phpAttributeFQDN          Normal
hi def link phpAttributeInitClassName Normal
hi def link phpAttributeClassName     Normal

