# Cross words with ctrl arrows
autoload -U select-word-style
select-word-style bash
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Disable adding completions, only shows
setopt noautomenu nomenucomplete

# Load shared shell customizations
source "$HOME/.shrc"

# The following lines were added by compinstall
zstyle ':completion:*' add-space true
zstyle ':completion:*' completer _expand _complete _prefix
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' ignore-parents parent directory
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' match-original only
zstyle ':completion:*' menu select=long
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

# History
#setopt inc_append_history
#setopt share_history
#setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
HISTFILE="$ZDOTDIR/histfile"
HISTSIZE=1000
SAVEHIST=1000

# Changing prompt
export PROMPT='%F{green}%n@%m%f> '
export RPROMPT="%F{blue}%~%f"

# Generic options
unsetopt beep nomatch
setopt auto_cd
bindkey -e

# Load plugins
source "$ZDOTDIR/plugins.zsh"

autoload -Uz compinit
compinit
