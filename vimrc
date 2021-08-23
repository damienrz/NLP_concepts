
" Custom Vim configuration

set number
set linebreak
set ts=4 sw =4

set breakindent
set belloff=all
set numberwidth=1

inoremap jj <ESC>
colorscheme desert

let &t_SI.="\e[4 q" " SI = INSERT mode
let &t_SR.="\e[4 q" " SR = REPLACE mode
let &t_EI.="\e[4 q" " EI = NORMAL mode

" copy (write) highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>
