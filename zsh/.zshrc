ZSH_DIR="$HOME/.zsh" # Path to my custom ZSH directory

# Config
source "$ZSH_DIR/config.zsh"
source "$ZSH_DIR/functions.zsh"

# Git functions
source "$ZSH_DIR/git.zsh"

# Theme
source "$ZSH_DIR/themes/powerlevel9k/powerlevel9k.zsh-theme"
source "$ZSH_DIR/appearance.zsh"

# Bundler
source "$ZSH_DIR/bundler.zsh"
#
# # Rails
source "$ZSH_DIR/rails.zsh"
#
# # Aliases
source "$ZSH_DIR/aliases.zsh"

# Base paths
export PATH="$HOME/.bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:./bin:$PATH"

# Iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# chruby
source "/usr/local/share/chruby/chruby.sh"
source "/usr/local/share/chruby/auto.sh"
