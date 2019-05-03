bindkey -e
bindkey '\ew' kill-region

# Ctrl + r/s - incremental search
bindkey "^r" history-incremental-search-backward

# ?
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history

# Shift tab reverse completes completions
bindkey "^[[Z" reverse-menu-complete

# Make search up and down work, so partially type and hit up/down to find relevant stuff
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Backspace deletes character
bindkey '^?' backward-delete-char
# Delete deletes character
# Delete key (or Fn + Delete on the Mac) work instead of outputting a ~
