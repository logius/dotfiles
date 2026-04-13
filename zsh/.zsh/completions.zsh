autoload -U compinit
compinit -i
zmodload -i zsh/complist

# Case-insensitive, partial-word, then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Menu-style selection for completions
zstyle ':completion:*:*:*:*:*' menu select

# Cache completions (speeds up things like brew/apt subcommand completion)
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path "$HOME/.zsh/cache"
