# ls colors
autoload -U colors && colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

#setopt no_beep
setopt auto_cd
setopt multios
setopt cdablevars

# Apply theming defaults
PS1="%n@%m:%~%# "

# Setup the prompt with pretty colors
setopt prompt_subst


local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status} %{$fg_bold[green]%}%2~ %{$fg_bold[blue]%}$(git_custom_status)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
