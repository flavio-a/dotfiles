# Load and configure plugins, setting up completion in the meantime

# Add to fpath
fpath=( "$ZDOTDIR/completions" "${fpath[@]}" )

# zsh-autosuggestions

ZSH_AUTOSUGGEST_STRATEGY='match_prev_cmd'
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=true

# wd

WD_CONFIG="$HOME/.cache/warprc"

# Load

source "$ZDOTDIR/zsh_plugins_pre.sh"

autoload -Uz compinit
compinit

source "$ZDOTDIR/zsh_plugins_post.sh"
