set cb=unnamed
set hid
set iskeyword-=.             " Regard . as a word boundary
set iskeyword-=_             " Regard _ as a word boundary
set iskeyword-=#             " Regard # as a word boundary
set nowrap
set nobackup
set autoread
set nohlsearch
set novisualbell
set laststatus=2
set noerrorbells
set shiftwidth=4
set si                          "smart indent
set smartcase
set smarttab
set ignorecase
set fileformats=unix,dos,mac
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set bomb
set binary
syntax enable
filetype on
syntax sync minlines=64
set ai                          "Auto Indent
au FocusLost * :silent! wall
set t_vb=
set tabstop=4
set lazyredraw
" clipboard
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif
au FocusLost * :wa

