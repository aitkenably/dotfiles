if exists('b:current_syntax') | finish | endif

syntax region sceneSpoken start=/"/ end=/"/ 
syntax match sceneComment "\s*#.*$"

hi def link sceneComment Comment
hi def link sceneSpoken String
