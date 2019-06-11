if exists('b:current_syntax') | finish | endif

syntax keyword storyKeyword title scene break
syntax match storyComment "\s*#.*$"
syntax region storyString start=/"/ end=/"/ 

hi def link storyString String 
hi def link storyComment Comment
hi def link storyKeyword Keyword 
