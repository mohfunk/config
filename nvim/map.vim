"move to the begining of a line with q
nmap <silent>q 0
vmap <silent>q 0
"move to the end of the line with e
nmap <silent>e $
vmap <silent>e $
" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" Move a line of text with ctrl+[jk]
nmap <S-j> mz:m+<cr>`z
nmap <S-k> mz:m-2<cr>`z
vmap <S-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <S-k> :m'<-2<cr>`>my`>mzgv`yo`z

" Leader
let mapleader=","
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <space> :Ag<CR>
nnoremap <leader>o o<esc>kO<esc>

inoremap jj <esc>
" write with ,w
nmap <leader>w :w!<CR>
" quit with ,q
map <leader>q :q!<cr>
" yank and paste with ,y ,p
noremap <leader>y "+y<CR>
noremap <leader>p "+gP<CR>
" Duplicate lines
nnoremap <Leader>d m`YP``
vnoremap <Leader>d YPgv
" Location list movement
nmap <Leader>j :lnext<CR>
nmap <Leader>k :lprev<CR>
" indent lines
nmap <leader>i mt<cr>gg=G<cr>'t<cr>:delmarks t<cr>
"" Buffer nav
" noremap <leader>z :bp<CR>
" noremap <leader>q :bp<CR>
" noremap <leader>x :bn<CR>
" noremap <leader>w :bn<CR>
"" Close buffer
noremap <leader>/ :bd<CR>

noremap <leader><leader> :w<CR>
noremap <leader>. :bn<CR>
noremap <leader>m :bp<CR>
noremap <leader><space> :Lines<CR>
noremap ss :vsplit<CR>
" Toggle hybrid number line

map <leader>z :call Tog()<CR>
map <leader>3 :call AR()<CR>
map <space><space> :Files<CR>

map <leader>1 :PlugInstall<CR>
map <leader>c gc
map <leader>t :tabnew<cr>
map .. ?
map <leader>s ys
map <leader>b <c-v>
nnoremap <leader>v V`]
" tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Limelight
nmap <Leader>l :wq<CR>
nmap <Leader>k :q!<CR>
" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
" undo tree
noremap <leader>u :UndotreeToggle<cr>
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <leader>ft Vatzf
nnoremap ; :
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <leader>2 :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
