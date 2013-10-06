colorscheme ir_black

" Set autowrite and autoread
set autowrite autoread

:hi TabLineFill ctermfg=0 ctermbg=0

" source: https://github.com/nviennot/vim-config/blob/master/vimrc"
set wildmenu
set wildmode=list:longest,full
set shortmess+=A                " Always edit file, even when swap file is found

let mapleader = '\'
let g:mapleader = '\'

" Fast saving
nmap <leader>w :w!<cr>

" :w!! sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null
"cmap w!! w !sudo tee % >/dev/null

" Use , to move to next tab (cycling)
map <leader><cr> :tabnext<cr>

" number lines
set nu
set numberwidth=4

" tabs settings
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" indent
set ai
set si

" Map <space> to / (search) and Ctrl-<space> to ? (backward search)
map <space> /
map <c-space> ?

" Disable hl when <leader><cr> is pressed
nmap <silent> <leader><cr> :noh<cr>

" Mappings to move between tabs
nmap <silent> <leader>t :tabnew<cr>
nmap <silent> <leader>q :tabclose<cr>
nmap <silent> <leader><Tab> :tabnext<cr>

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

map <leader>n :NERDTreeFind<cr>
let g:indent_guides_enable_on_vim_startup = 0

" Folds - manually - source: http://vim.wikia.com/wiki/Folding
augroup vimrc
    au BufReadPre * setlocal foldmethod=indent
    au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
set foldmethod=indent

nmap <C-f> :foldclose<cr>
nmap <C-o> :foldopen<cr>

map <C-UP> <C-W><C-UP>
map <C-DOWN> <C-W><C-DOWN>
map <C-LEFT> <C-W><C-LEFT>
map <C-RIGHT> <C-W><C-RIGHT>

" Highlight cursor line.
" source http://dysfunctionalprogramming.co.uk/blog/2013/08/15/fight-with-tools/
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
    au WinLeave * setlocal nocursorline
    au WinLeave * setlocal nocursorcolumn
augroup END

" Automatically leave insert mode after 'updatetime' (4s by default).
au CursorHoldI * stopinsert

Bundle 'Valloric/YouCompleteMe'

" fuck others ppl projects who *enforces* this
"let g:spf13_keep_trailing_whitespace = 1

