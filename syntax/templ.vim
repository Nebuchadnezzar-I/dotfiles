runtime! syntax/go.vim
unlet b:current_syntax

syntax clear go_keywords
syntax keyword go_keywords templ import package if else switch
syntax keyword html_keywords accept accept-charset accesskey action align alt async autocomplete autofocus autoplay bgcolor border charset checked cite class color cols colspan content contenteditable controls coords datetime default defer dir dirname disabled download draggable enctype enterkeyhint for form formaction headers height hidden high href hreflang http-equiv id inert inputmode ismap kind label lang list loop low max maxlength media method min multiple muted name novalidate onabort onafterprint onbeforeprint onbeforeunload onblur oncanplay oncanplaythrough onchange onclick oncontextmenu oncopy oncuechange oncut ondblclick ondrag ondragend ondragenter ondragleave ondragover ondragstart ondrop ondurationchange onemptied onended onerror onfocus onhashchange oninput oninvalid onkeydown onkeypress onkeyup onload onloadeddata onloadedmetadata onloadstart onmousedown onmousemove onmouseout onmouseover onmouseup onmousewheel onoffline ononline onpagehide onpageshow onpaste onpause onplay onplaying onpopstate onprogress onratechange onreset onresize onscroll onsearch onseeked onseeking onselect onstalled onstorage onsubmit onsuspend ontimeupdate ontoggle onunload onvolumechange onwaiting onwheel open optimum pattern placeholder popover popovertarget popovertargetaction poster preload readonly rel required reversed rows rowspan sandbox scope selected shape size sizes span spellcheck src srcdoc srclang srcset start step style tabindex target translate type usemap value width wrap as crossorigin
syntax keyword go_types string

syntax match templ_composition "@[a-zA-Z]\+"
syntax match star_attribute "\<data-[a-zA-Z0-9-]*"

highlight go_types guifg=#8590F4
highlight go_keywords guifg=#FFDD33
highlight star_attribute guifg=#96A6C8
highlight html_keywords guifg=#96A6C8
highlight templ_composition guifg=#FFDD33

let b:current_syntax = "templ"
