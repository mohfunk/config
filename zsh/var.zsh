# Editor
export VISUAL="nvim"

# OS
if [[ `uname` == 'Linux' ]]; then
    export OS=linux
elif [[ `uname` == 'Darwin' ]]; then
    export OS=osx
else
    export OS=win
fi

# Shell
if [[ $OS == "osx" ]]; then
    export TLD="/Users/moh"
else
    export TLD="/home/mohammed/"
fi
export ZSH="$TLD/.oh-my-zsh"

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Cheat
export CHEATCOLORS=true
export DEFAULT_CHEAT_DIR='~/ws/.conf/cheat'
export CHEATPATH='~/ws/.conf/cheat'
#
# Fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse-list --border --inline-info --multi'
# Dirs
export WS="$TLD/ws"
export L_CONF="$WS/.conf"
export L_DOT="$L_CONF/dot"
export L_GARB="$WS/.term"
export L_VIMC="$L_DOT/nvim"
export FR="$L_CONF/fr"
export PIN_DIR="$L_CONF/pins"
export PIN_FILE="$PIN_DIR/p"
export PIN_TEMP="$PIN_DIR/t"
# Path
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.5.0/bin/"
export PATH="$PATH:$HOME/.cargo/bin/"
export PATH="$PATH:$HOME/c/bin"
export PATH="$PATH:$HOME/bin/"
export PATH="$PATH:$HOME/sys161/bin/"
export PATH="$PATH:$HOME/sys161/tools/bin/"
export PATH="$PATH:/usr/local/Cellar/llvm/6.0.1/bin"
export PATH="$PATH:/usr/local/Cellar/"
export PATH="$PATH:/Applications/"
export PATH="$PATH:/opt/local/bin"
export PATH="$PATH:/usr/local/bin/pip/"
export PATH="$PATH:/opt/local/sbin"
export PATH="$PATH:$HOME/Library/Haskell/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin" 

# NVM
export NVM_DIR="$HOME/.nvm"

# Password Manager
export PASSWORD_STORE_DIR="$HOME/ws/.conf/password-store"
# COLORS
export EXA_COLORS="di=36;0;01:*.cs=31;0;01:*.asmdef=30;47:*.zsh=33:*.vim=36:*.c=36:*.cc=33:*.h=37;40"
export EXA_COLORS="$EXA_COLORS:*.go=34;0;01"

export EXA_COLORS="$EXA_COLORS:*.rs=34;0;01"
export EXA_COLORS="$EXA_COLORS:*.md=33;0;04"
export EXA_COLORS="$EXA_COLORS:*.json=32;0;04"
export EXA_COLORS="$EXA_COLORS:*.yaml=33;0;04"
export EXA_COLORS="$EXA_COLORS:*.hs=37;0;01"
export EXA_COLORS="$EXA_COLORS:*.clj=37;0;01"
export EXA_COLORS="$EXA_COLORS:*.html=37;0;01"
