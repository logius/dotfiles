alias dbstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias dbstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias zshconfig="atom ~/.zshrc"
alias known_hosts="atom ~/.ssh/known_hosts"

alias dbreset="bundle exec rake db:drop db:create db:migrate SEED_DEMO=1 db:seed"
alias pdbreset="powder stop && bundle exec rake db:drop db:create db:migrate SEED_DEMO=1 db:seed && powder start"

alias gfix="git commit --fixup"
alias gfixd='git commit --fixup $(git rev-parse HEAD)'
alias gsq="git commit --squash"

function gnuke {
  git branch -D "$1" && git push origin :"$1"
}
