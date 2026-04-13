bindkey -e

# Shift+Tab reverse-completes in the completion menu
bindkey "^[[Z" reverse-menu-complete

# Prefix-matching history recall with Up/Down arrows.
# Note: Warp intercepts arrow keys for its own history UI, so these fire
# mainly in non-Warp terminals (iTerm2, Terminal.app, tmux, SSH sessions).
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
