# Cross words with ctrl arrows
autoload -U select-word-style
select-word-style bash
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Bind delete key to actually delete characters
bindkey "^[[3~" delete-char

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
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
HISTFILE="$ZDOTDIR/histfile"
HISTSIZE=100000
SAVEHIST=100000

# Automatically report time for long commands
REPORTTIME=5

# Making disown send continue to the disowned process
setopt AUTO_CONTINUE

# Changing prompt
{%@@ if profile == "marvin" or profile == "zenithia" @@%}
export PROMPT='%F{green}%n@%m%f> '
{%@@ endif @@%}
{%@@ if profile == "uz" @@%}
export PROMPT='%F{green}%n@%m%f$ '
{%@@ endif @@%}
export RPROMPT="%F{blue}%~%f"

# Generic options
unsetopt beep nomatch
# setopt auto_cd
bindkey -e

# Load plugins and setup completion
source "$ZDOTDIR/plugins.zsh"

# Use gpg for ssh
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Disable Ctrl-S to pause terminal
stty -ixon
