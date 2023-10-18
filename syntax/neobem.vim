" Vim syntax file
" Language:	   Neobem
" Maintainer:  Mitchell T. Paulus
" Last Change: 2022-01-28
" Remark:      Superset of idf syntax.

" See 44.12 Portable syntax file layout

if exists("b:current_syntax")
    echom "Exited early"
    echom b:current_syntax
    finish
endif

" See vim help Section 44.9. This is how it is recommended to
" include another syntax file
runtime! syntax/idf.vim

syntax iskeyword @,48-57,_,192-255,@-@

syntax keyword NeobemKeyword import export print and or return let in as only not log
syntax keyword NeobemConditional if then else
syntax keyword NeobemBoolean true false

syntax match NeobemFunctionApplication "[a-z][A-Za-z_]*("he=e-1

syntax region String start=/'/ end=/'/

syntax region NeobemComment start=/#/ end=/$/

syntax match BclUuid /\vbcl:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/

syntax region Doe2String start=/"/ end=/"/
syntax region Doe2Comment start=/\$/ end=/$/
syntax match Doe2Terminator /\.\./

highlight default link NeobemKeyword Type
highlight default link NeobemConditional Conditional
highlight default link NeobemFunctionApplication Function
highlight default link NeobemBoolean Boolean
highlight default link BclUuid Constant

highlight default BclUuid cterm=bold
" I like the italics and light gray works for me.
highlight default NeobemComment cterm=italic ctermfg=8 gui=italic guifg=LightGray

highlight default link Doe2String String
highlight default link Doe2Comment Comment
highlight default link Doe2Terminator Special

let b:current_syntax = "neobem"
