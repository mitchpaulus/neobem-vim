" Vim syntax file
" Language:	   Neobem
" Maintainer:  Mitchell T. Paulus
" Last Change: 2021-06-30
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

syntax keyword BempKeyword import export print and or return let in as only not
syntax keyword BempConditional if then else

syntax keyword NeobemBoolean true false

syntax match BempFunctionApplication "[a-z][A-Za-z_]*("he=e-1

syntax region String start=/'/ end=/'/
syntax region NeobemComment start=/#/ end=/$/

highlight link BempKeyword Type
highlight link BempConditional Conditional
highlight link BempFunctionApplication Function
highlight link NeobemBoolean Boolean

" I like the italics and light gray works for me.
highlight NeobemComment cterm=italic ctermfg=8 gui=italic guifg=LightGray

let b:current_syntax = "neobem"
