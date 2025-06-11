# Set directory for zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Source alias
[ -f "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"

# Add in zsh Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found
zinit snippet OMZP::alias-finder

# Load completions + XDG-Shema
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
autoload -Uz compinit
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
compinit -d "$XDG_CACHE_HOME"/zsh/zshcompdummp-$ZSH_VERSION

zinit cdreplay -q

# History Config
[ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
HISTFILE="$XDG_STATE_HOME"/zsh/zsh_history
HISTSIZE=20000
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


# Keys when editing Commands (v = vi, e = emax)
# Der Kommand listet alle Dinge auf welche gebindet werden können
# zle -al
bindkey -e
# Search Hist, match Prefix
bindkey '^p' history-search-backward 
bindkey '^n' history-search-forward   


# Completions styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # Match Lowercase to Uppercase Chars
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # Enable Colors when Autosugesting
zstyle ':completion:*' menu no # Disable default completions menu (replaced by fzf)
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # Show Preview von cd
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath' # Show Preview von when using zoxide
zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer yes
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# Options
# Kommand: "set -o" für eine List von Optionen
unsetopt beep


# Prompt Config
autoload -Uz promptinit
promptinit
prompt walters
