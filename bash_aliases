alias gr='grunt'
alias gs='git status'
alias gp='git pull'
alias ga='git add . --all'
alias gcm='git checkout master'
alias eh='sudo nohup xdg-open /etc/hosts > /dev/null'
alias gc='git changelog'
alias gg='git graph'
alias ws='wstorm . > /dev/null 2>&1 &'
alias sosaria='ssh root@192.241.183.18'
alias sudo='sudo '
alias open='xdg-open '

. $HOME/.git-prompt.sh

## PWD
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1)\$ '
