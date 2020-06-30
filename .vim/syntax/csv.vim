if exists("b:current_syntax")
  finish
end

syn keyword csvSeparator , |
syn keyword csvTodo contained TODO FIXME XXX NOTE
syn match csvComment "#.*$" contains=csvTodo

hi def link csvSeparator   Keyword 
hi def link csvTodo        Todo
hi def link csvComment     Comment

let b:current_syntax = "csv"

