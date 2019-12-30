" Vim syntax file
" Language: aya
" Maintainer: Nicholas Paul
" Latest Revision: Jun 2018

if exists("b:current_syntax")
  finish
endif

syn keyword ayaKeyword self meta import load using
syn keyword ayaKeyword if then dowhile while print println
syn keyword ayaKeyword getline class struct
syn keyword ayaKeyword def module assert

syn match ayaOperator '[:.]\?[A-Z><$%&!@\-=*?\\|/+~]'
syn match ayaOperator ':\?#'
syn match ayaOperator '[.:]["\',\[\]();]'
syn match ayaOperator ': '
syn match ayaOperator 'M.'

syn match ayaNumber ':\?\d\+'
syn match ayaNumber ':\?\d\+.\d\+'
syn match ayaNumber ':\?\d\+.\d\+[a-z]'
syn match ayaNumber ':\?\d\+.\d\+[a-z]\d\+'
syn match ayaNumber ':\?\d\+.\d\+[a-z]\d\+.\d\+'

syn region ayaBlock start="{" end="}" fold transparent

syn region ayaString start='"' end='"' contained
syn region ayaString start='"' end='"'

syn match ayaChar /'./

syn match ayaComment '\.#.*$'
syn region ayaComment start="\.{" end="\.}" contained
syn region ayaComment start="\.{" end="\.}"

syn match ayaSym '::[a-z_]\+'

syn match ayaVar '\.\?:[a-z_]\+;'

syn match ayaVar '[a-z_]\+::[a-z_]\+'

let b:current_syntax = "aya"

hi def link ayaOperator     Operator
hi def link ayaKeyword      Keyword
hi def link ayaNumber       Number
hi def link ayaComment      Comment
hi def link ayaString       String
hi def link ayaChar         Character
hi def link ayaSym          Identifier
hi def link ayaVar          Function
hi def link ayaBlock        Statement
