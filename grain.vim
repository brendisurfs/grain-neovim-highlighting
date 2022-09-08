" --- NEW CONFIG
if exists("b:current_syntax")
  finish
endif

" syntax
syntax keyword grainKeyword let record type enum
syntax keyword grainConditional if then else match
syntax keyword grainFunction print toString

" Operators
syntax match grainOperator "\v/"
syntax match grainOperator "\v-"
syntax match grainOperator "\v\+"
syntax match grainOperator "\v\?"
syntax match grainOperator "\v\="
syntax match grainOperator "\v\*"
syntax match grainOperator "\v-\="
syntax match grainOperator "\v\*\="
syntax match grainOperator "\v\+\="


" Strings
syntax region grainString start=/\v"/ skip=/\v\\./ end=/\v"/

" Comments
syntax match grainComment "\/\/.*$"

" variable
" NOTE: this does not work.
syntax region grainFunction start="(?<=let)"  end="(?=\=)"


" linking
highlight link grainString String
highlight link grainComment Comment
highlight link grainKeyword Keyword
highlight link grainConditional Conditional
highlight link grainOperator Operator
highlight link grainFunction Function

let b:current_syntax = "grain"

