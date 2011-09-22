set nu
set nocompatible
set autoindent
set cindent
"set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set showmatch
set incsearch
"set virtualedit=all
syntax on
set scrolloff=3

set autochdir " always switch to the current file directory 
set backspace=indent,eol,start " make backspace a more flexible


set cursorline " highlights current line


" Set to auto read when a file is changed from the outside
set autoread
set ignorecase "Ignore case when searching

"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

set fileencodings=utf-8,gbk,big5,gb18030
":imap <C-X> "+x
":imap <C-C> "+y 
":imap <C-V> "+gP
"set guifont=DejaVu\ Sans\ Mono\ 12

let twitvim_enable_python = 1

"== LaTeX Suite
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

set whichwrap=b,s,<,>,[,]

let Tlist_Use_Left_Window=1
let Tlist_Auto_Update=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
nmap <F7> :TlistToggle <CR>

" autocmd FileType cpp nmap <F10> :w<cr>:setlocal makeprg=g++\ -Wall\ -o\ %:r\ %<cr>:make<cr><cr>:cw<cr>
autocmd FileType cpp nmap <F10> :w<cr>:setlocal makeprg=g++\ -Wall\ -o\ %:r\ -ansi\ -O2\ -w\ -lm\ %<cr>:make<cr><cr>:cw<cr>
autocmd FileType c nmap <F10> :w<cr>:setlocal makeprg=gcc\ -Wall\ -o\ %:r\ %<cr>:make<cr><cr>:cw<cr>
autocmd FileType cpp,c nmap <F5> :exe "!./".expand("%:r")." "<cr>
" autocmd FileType cpp,c nmap <F5> :exe "!./".expand("%:r")." "<Left>
autocmd FileType javascript nmap <F9> :call JsonLint()<cr>
autocmd FileType java nmap <F10> :w<cr>:setlocal makeprg=javac\ %<cr>:make<cr><cr>:cw<cr>
autocmd FileType asm nmap <F10> :w<cr>:setlocal makeprg=as\ --64\ -g\ -o\ %:r.o\ %\ &&\ ld\ -o\ %:r\ %:r.o<cr>:make<cr><cr>:cw<cr>
" autocmd FileType cpp,c nmap <F5> :exe "!./".expand("%:r")." "<Left>
autocmd FileType python nmap <F5> :exe "!./".expand("%")." "
autocmd FileType python nmap <F6> :!time ./%

autocmd FileType tex nmap <F10> :w<cr>:setlocal makeprg=xetex\ %<cr>:make<cr><cr>:cw<cr>
"autocmd FileType dot nmap <F5> :w<cr>:setlocal makeprg=dot\ -Kfdp\ -Tpdf\ -o%:r.pdf\ %<cr>:make<cr><cr>:cw<cr>
autocmd FileType dot nmap <F5> :exe "!dot -Tpdf -o".expand("%:r").".pdf ".expand("%")
set background=dark

"set clipboard+=unnamed
"
map <F11> :set number!<CR>

nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprevious<CR>

nmap <F6> :%s/。/. /g<CR>:%s/，/, /g<CR>:%s/？/? /g<CR>:%s/：/\: /g<CR>:%s/　/ /g<CR>:%s/；/; /g<CR>

set fileformat=unix
