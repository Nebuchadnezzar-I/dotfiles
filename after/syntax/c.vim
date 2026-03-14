if exists("b:current_syntax")
  finish
endif

syntax clear

syntax keyword  c_kwdr true false auto break case char const continue 
            \default do double else enum extern float for goto if register 
            \return short signed sizeof static switch typedef 
            \volatile while defined FUNCTION LOCAL GLOBAL
syntax keyword  c_type int long unsigned u64 u32 u16 u8 i64 i32 i16 i8 b64 b32
            \b16 b8 f32 f64 void struct union

syntax region   c_strg start='"' end='"'
syntax region   c_char start="'" end="'"

syntax match    c_nmbr '\<[0-9]\+\(\.\)\?\([0-9]\+\)\?\(\w\)\?\>'
syntax match    c_flot '0x\w\+'
syntax match    c_comm '/\*\_.\{-}\*/'
syntax match    c_ppms '^#\s*\w*'
syntax match    c_impr '<[^>]\+>'

highlight c_type guifg=#96A6C8
highlight c_comm guifg=#CC8C3C

highlight c_kwdr guifg=#FFDD33
highlight c_ppms guifg=#5F627F

highlight c_char guifg=#73C836
highlight c_strg guifg=#73C836
highlight c_impr guifg=#73C836

highlight c_nmbr guifg=#8590F4
highlight c_flot guifg=#8590F4

let b:current_syntax = "c"
