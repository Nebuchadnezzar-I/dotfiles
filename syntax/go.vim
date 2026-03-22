if exists("b:current_syntax")
  finish
endif

syntax clear

syntax keyword go_keywords break default func interface select case defer go map struct chan else goto package switch const fallthrough if range type continue for import return var
syntax keyword go_types uint8 uint16 uint32 uint64 int8 int16 int32 int64 float32 float64 complex64 complex128 byte rune uint int uintptr

syntax region go_strings start='"' end='"'
syntax match go_comments "//.*$"

highlight go_keywords guifg=#FFDD33
highlight go_types guifg=#8590F4
highlight go_strings guifg=#73C836
highlight go_comments guifg=#CC8C3C

let b:current_syntax = "go"
