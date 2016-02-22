se tabstop=4
se shiftwidth=4
se expandtab
se smartcase
se paste
se enc=utf8
se fileencodings=utf8
se ambiwidth=double
se hlsearch
se autoindent
se smartindent
se number
se ruler

"show cursorline
set cursorline

"when close bracket, move cursor to matched another for a moment
set nostartofline

"highlight matched bracket
set showmatch

"show command on status line
set showcmd

"show status line anytime
set laststatus=2

"show file number
set statusline=[%n]

"show hostname
set statusline+=%{matchstr(hostname(),'\\w\\+')}@

"show filename
set statusline+=%<%F

"変更のチェック表示
set statusline+=%m

"show isReadOnly
set statusline+=%r

"show file format
set statusline+=[%{&fileformat}]

"show character encoding
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]

"show file type
set statusline+=%y

"show current line number/total lines
set statusline+=[L=%l/%L]

"very magic
nnoremap /  /\v

