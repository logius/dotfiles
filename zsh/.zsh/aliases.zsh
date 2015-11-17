#
# Database
#

alias dbstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias dbstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias dbreset="bundle exec rake db:migrate:reset && SEED_DEMO=1 bundle exec rake db:seed"
alias pdbreset="powder stop && bundle exec rake db:migrate:reset && SEED_DEMO=1 bundle exec rake db:seed && powder start"

#
# GIT
#

alias g="git"

alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gc="git commit -v"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gfa="git fetch --all --prune"
alias ggsup="git branch --set-upstream-to=origin/$(current_branch)"

alias ggpull="git pull origin $(current_branch)"
alias ggpush="ggp"
alias ggpur="ggu"

alias gst="git status"
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias gm="git merge"
alias grb="git rebase"
alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbi="git rebase -i"
alias grbm="git rebase master"
alias grbs="git rebase --skip"

alias gfix="git commit --fixup"
alias gfixd="git commit --fixup $(last_commit_hash)"
alias gsq="git commit --squash"

#
# HomeBrew
#

alias brews="brew list -1"
alias bubo="brew update && brew outdated"
alias bubc="brew upgrade && brew cleanup"
alias bubu="bubo && bubc"

#
# Other
#

alias zshconfig="atom ~/.zshrc"
alias known_hosts="atom ~/.ssh/known_hosts"
