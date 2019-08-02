echo "setup custom settings from cultavix-rcfiles..."

### GLOBAL SETTINGS
export CLICOLOR=1

### GIT
alias g='git'
alias ga='git add *'
alias gb='git branch'
alias gc='git commit -a -m'
alias gp='git push -u origin'
alias gk='git checkout'
alias gkb='git checkout -b "${1}"'
alias gs='git status'
alias gf='git fetch'
alias gclean='git clean -df'
alias gitsquash='git reset --soft HEAD~'

### MISC
alias did="vim +'normal Go' +'r!date' ~/did.txt"
export GPG_TTY=`tty`

alias kns='function _kns(){ kubectl config set-context $NAME --namespace=$1; };_kns'

export PATH=${PATH}:~/.gem/ruby/2.3.0/bin:~/Library/Python/2.7/bin:/usr/local/bin:/usr/local/sbin:~/go/bin/

# ZSH OPTIONS
setopt AUTO_CD

fp() {
    local loc=$(echo $PATH | sed -e $'s/:/\\\n/g' | eval "fzf ${FZF_DEFAULT_OPTS} --header='[find:path]'")

if [[ -d $loc ]]; then
  echo "$(rg --files $loc | rev | cut -d"/" -f1 | rev)" | eval "fzf ${FZF_DEFAULT_OPTS} --header='[find:exe] => ${loc}' >/dev/null"
  fp
fi
}

bip() {
### BREW + FZF
# update multiple packages at once
# mnemonic [B]rew [U]pdate [P]lugin

local inst=$(brew search | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[brew:install]'")

if [[ $inst ]]; then
  for prog in $(echo $inst)
  do brew install $prog
  done
fi
}

bup() {
local upd=$(brew leaves | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[brew:update]'")

if [[ $upd ]]; then
  for prog in $(echo $upd)
  do brew upgrade $prog
  done
fi
}

fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'

## CHTF
# Source chtf
if [[ -f /usr/local/opt/chtf/share/chtf/chtf.sh ]]; then
  source "/usr/local/opt/chtf/share/chtf/chtf.sh"
fi

alias diff="/usr/local/bin/grc /usr/bin/diff"
