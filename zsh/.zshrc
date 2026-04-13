ZSH_DIR="$HOME/.zsh" # Path to my custom ZSH directory

# --- Environment: PATH, package managers, version managers ---
export PATH="$HOME/.local/bin:$HOME/.bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"

# Homebrew (adds /opt/homebrew/bin to PATH, sets HOMEBREW_PREFIX, etc.)
[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"

# Ruby version manager init lives in ~/.zshrc.local (rbenv on work,
# chruby on home) — sourced at the bottom of this file.

# --- Shell config ---
source "$ZSH_DIR/config.zsh"
source "$ZSH_DIR/functions.zsh"
source "$ZSH_DIR/git.zsh"
source "$ZSH_DIR/bundler.zsh"
source "$ZSH_DIR/rails.zsh"
source "$ZSH_DIR/aliases.zsh"

# --- Machine-specific overrides (tokens, work git identity) — not tracked ---
[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
