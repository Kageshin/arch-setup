# Source alias
[ -f "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"



# History Config
[ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
HISTFILE="$XDG_STATE_HOME"/zsh/zsh_history

HISTSIZE=20000
SAVEHIST=$HISTSIZE

setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks


# Options
# Kommand: "set -o" für eine List von Optionen
unsetopt beep


# Keys when editing Commands (v = vi)
bindkey -e


# Auto Completions
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
autoload -Uz compinit 

zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
zstyle ':completion:*' menu select

compinit -d "$XDG_CACHE_HOME"/zsh/zshcompdummp-$ZSH_VERSION


# Prompt Config
autoload -Uz promptinit
promptinit
prompt walters


# Keybindings
# Der Kommand listet alle Dinge auf welche gebindet werden können
# zle -al
