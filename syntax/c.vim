if exists("b:current_syntax")
  finish
endif

syntax clear

syntax keyword c_keyword keyword break else switch case extern return 
            \const continue for default goto do if while defined

syntax keyword c_types auto double int sizeof void signed unsigned short
            \float long typedef char register f32 f64 i8 i16 i32 i64 u8 u16
            \ u32 u64 s8 s16 s32 s64

syntax keyword c_declarators static FUNCTION LOCAL GLOBAL SYMBOL

syntax region c_comments start="/\*" end="\*/"
syntax match c_char "\'.\?\'"
syntax match c_imports "<[^>]\+>"
syntax match c_macros "^#\s*\w*"
syntax match c_hexadecimal "0x.\+"

syntax match c_compound_types "\<\(struct\|union\|enum\)\>" nextgroup=c_compound_names skipwhite
syntax match c_decimal "\.\?\<\(0x\)\@![0-9]\+\.\?[0-9]*[UuLlFfEe-]*[0-9]*"
syntax match c_compound_names "\w\+" contained

syntax match c_strings '\".*\"' contains=c_special
syntax match c_special "\\[nt]"


highlight c_char guifg=#73C836
highlight c_types guifg=#8590F4
highlight c_special guifg=#FFDD33
highlight c_macros guifg=#5F627F
highlight c_decimal guifg=#8590F4
highlight c_imports guifg=#73C836
highlight c_keyword guifg=#FFDD33
highlight c_strings guifg=#73C836
highlight c_comments guifg=#CC8C3C
highlight c_hexadecimal guifg=#8590F4
highlight c_declarators guifg=#96A6C8
highlight c_compound_types guifg=#96A6C8
highlight c_compound_names guifg=#FFDD33

let b:current_syntax = "c"
