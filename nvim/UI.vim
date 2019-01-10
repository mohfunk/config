set number
set nuw=3
set showcmd
set showmatch
set copyindent
set expandtab
set history=50
set title
set incsearch
set scrolloff=3
set modeline
set modelines=10
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10
set textwidth=80
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set fillchars=""

" Colors

" Vars
let g:nls = 1
let g:lang = 1
if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
endif
if has('mouse')
    set mouse=a
    set mousemodel=popup
endif
if has ("autocmd")

    augroup numbertoggle
        if g:nls==1
            autocmd!
            autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
            autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
        else
            autocmd!
            autocmd
        endif
    augroup END

    " Autoload init.vim
    autocmd! bufwritepost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim

augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END
"" js 
"" justfiles
augroup filetypedetect
  au BufNewFile,BufRead Justfile,justfile setf make
augroup END
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END
endif

function! Arabic()
    set keymap=arabic-pc
    set rightleft
endfunction

function! English()
    set keymap=
    set norightleft
endfunction

function! Tog()
    if g:nls==1
        let g:nls = 0
        set norelativenumber
        set nonumber
    else
        let g:nls = 1
        set number
        set relativenumber
    endif
endfunction

" js beautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
