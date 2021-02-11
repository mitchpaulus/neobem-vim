" Vim syntax file
" Language:	   bemp
" Maintainer:  Mitchell T. Paulus
" Last Change: Sunday 2021-01-31
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

syntax keyword BempKeyword import print and or return let in
syntax keyword BempConditional if then else

syntax match BempFunctionApplication "[a-z][A-Za-z_]*("he=e-1

syntax region String start=/'/ end=/'/
syntax region NeobemComment start=/#/ end=/$/

highlight link BempKeyword Type
highlight link BempConditional Conditional
highlight link BempFunctionApplication Function

" I like the italics and light gray works for me.
highlight NeobemComment cterm=italic ctermfg=8 gui=italic guifg=LightGray

let b:current_syntax = "bemp"
