syntax on
set nu
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set smartindent
set smarttab

map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>
au BufRead,BufNewFile *.json set filetype=json

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let Tlist_Ctags_Cmd='/opt/local/bin/ctags'

map T :TaskList<CR>
map P :TlistToggle<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
