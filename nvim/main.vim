" Basic
"""""
set shell=zsh
set nocompatible
filetype off
"""""
" Basic






" Plugins
""""""
call plug#begin('~/.local/share/nvim/plugged')
if filereadable(expand("~/ws/.conf/dot/nvim/plug.vim"))
    source ~/ws/.conf/dot/nvim/plug.vim
endif
call plug#end()
filetype plugin indent on
""""""
" Plugins






"" Setup
""""""
if filereadable(expand("~/ws/.conf/dot/nvim/setup.vim"))
    source ~/ws/.conf/dot/nvim/setup.vim
endif
""""""
"" Setup






"" UI
""""""
if filereadable(expand("~/ws/.conf/dot/nvim/UI.vim"))
    source ~/ws/.conf/dot/nvim/UI.vim
endif
if filereadable(expand("~/ws/.conf/dot/nvim/moh.vim"))
    source ~/ws/.conf/dot/nvim/moh.vim
endif
""""""
"" UI






"" Mappings
"""""""
if filereadable(expand("~/ws/.conf/dot/nvim/map.vim"))
    source ~/ws/.conf/dot/nvim/map.vim
endif
"""""""
"" Mappings






"" Abbreviations
"""""""
if filereadable(expand("~/ws/.conf/dot/nvim/abbrev.vim"))
    source ~/ws/.conf/dot/nvim/abbrev.vim
endif
"""""""
"" Abbreviations





"" plugin-settings
""""""
if filereadable(expand("~/ws/.conf/dot/nvim/setplug.vim"))
    source ~/ws/.conf/dot/nvim/setplug.vim
endif
""""""
"" plugin-settings





" Renamer
"""""
if filereadable(expand("~/ws/.conf/dot/nvim/renamer.vim"))
    source ~/ws/.conf/dot/nvim/renamer.vim
endif
"""""
" Renamer




" Arabic Maps
"""""
if filereadable(expand("~/ws/.conf/dot/nvim/arabic.vim"))
    source ~/ws/.conf/dot/nvim/arabic.vim
endif
"""""
" Arabic Maps


