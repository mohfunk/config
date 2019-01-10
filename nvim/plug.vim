" Enviorment
"""""
" Nerd Tree to interact with Directories
Plug 'scrooloose/nerdtree'
" fzf fuzzy finder with useful commands
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Completion Engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'} 
let g:deoplete#enable_at_startup = 1
" Linting Engine
Plug 'neomake/neomake'
" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"""""
" Enviorment

" Editing
"""""
" Disables syntax highligting for areas you're not focused on ,l to toggle
Plug 'junegunn/limelight.vim'
" Autocomplete with <tab>
Plug 'ervandew/supertab'
" Auto close ", (, {.. etc
Plug 'Raimondi/delimitMate'
" Snippets
Plug 'SirVer/ultisnips'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
" (un)commentry
Plug 'scrooloose/nerdcommenter'
" (un)Surround
Plug 'tpope/vim-surround'
" alignment
Plug 'godlygeek/tabular'
" Goyo
Plug 'junegunn/goyo.vim' 
" Searching
Plug 'haya14busa/incsearch.vim'
" insert lorem
Plug 'vim-scripts/loremipsum'
" alignment
Plug 'junegunn/vim-easy-align'
" peek
Plug 'junegunn/vim-peekaboo'
" Target after
Plug 'junegunn/vim-after-object'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'amix/vim-zenroom2'
""""""
" Editing

" UI
"""""
" Status bar
Plug 'itchyny/lightline.vim'
" File Icons
Plug 'ryanoasis/vim-devicons'
"""""
" UI

" Language Support
"""""
Plug 'arakashic/chromatica.nvim'
" Vue
Plug 'posva/vim-vue'
" typescript
Plug 'leafgarland/typescript-vim'
" Racket
Plug 'wlangstroth/vim-racket'
" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
" C
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
" Javascript
Plug 'pangloss/vim-javascript'
" elm
Plug 'lambdatoast/elm.vim'
" Sass / SCSS
Plug 'tpope/vim-haml'
" Haskell
Plug 'neovimhaskell/haskell-vim'
" Markdown
Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'plasticboy/vim-markdown'
" Ruby
Plug 'vim-ruby/vim-ruby'
" Nim
Plug 'zah/nim.vim'
" Go
Plug 'fatih/vim-go'
"""""
" Language Support
