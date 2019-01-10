eval "$(jump shell)"
HIST_STAMPS="dd.mm.yyyy"
DISABLE_LS_COLORS=false
ZSH_THEME="geometry/geometry"
#ZSH_THEME="avit"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[alias]='fg=yellow, bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[command]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[default]='fg=white'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=white, bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=white, bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=white, bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[cursor]='bg=blue'
GEOMETRY_COLOR_EXIT_VALUE="blue"         # prompt symbol color when exit value is != 0
GEOMETRY_COLOR_PROMPT="white"               # prompt symbol color
GEOMETRY_COLOR_ROOT="white"                   # root prompt symbol color
GEOMETRY_COLOR_DIR="cyan"                   # current directory color
GEOMETRY_GREP="ag"                            # define which grep-like tool to use (By default it looks for rg, ag and finally grep)
