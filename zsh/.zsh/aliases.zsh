#
# Database
#

alias dbstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias dbstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias dbreset="bundle exec rake db:drop db:create db:migrate SEED_DEMO=1 db:seed"
alias pdbreset="powder stop && bundle exec rake db:drop db:create db:migrate SEED_DEMO=1 db:seed && powder start"

#
# GIT
#

alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -v'
alias gcm='git checkout master'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gfa='git fetch --all --prune'

alias ggpull='git pull origin $(current_branch)'


alias ggpush='git push origin $(current_branch)'


ggf() {
[[ "$#" != 1 ]] && local b="$(current_branch)"
git push --force origin "${b:=$1}"
}

ggl() {
if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
git pull origin "${*}"
else
[[ "$#" == 0 ]] && local b="$(current_branch)"
git pull origin "${b:=$1}"
fi
}

alias ggpull='git pull origin $(current_branch)'

ggp() {
if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
git push origin "${*}"
else
[[ "$#" == 0 ]] && local b="$(current_branch)"
git push origin "${b:=$1}"
fi
}

alias ggpush='git push origin $(current_branch)'

ggpnp() {
if [[ "$#" == 0 ]]; then
ggl && ggp
else
ggl "${*}" && ggp "${*}"
fi
}

ggu() {
[[ "$#" != 1 ]] && local b="$(current_branch)"
git pull --rebase origin "${b:=$1}"
}

alias ggpur='ggu'

alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gm='git merge'

alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias gst='git status'

alias gfix="git commit --fixup"
alias gfixd='git commit --fixup $(git rev-parse HEAD)'
alias gsq="git commit --squash"

#
# HomeBrew
#

alias brews='brew list -1'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'

#
# Other
#

alias zshconfig="atom ~/.zshrc"
alias known_hosts="atom ~/.ssh/known_hosts"
