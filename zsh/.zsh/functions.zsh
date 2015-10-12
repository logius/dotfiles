function mk {
  mkdir "$1" && cd "$1"
}

function gnuke {
  git branch -D "$1" && git push origin :"$1"
}
