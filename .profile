if [[ -s /Users/florianvallen/.rvm/scripts/rvm ]] ; then source /Users/florianvallen/.rvm/scripts/rvm ; fi

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

function precmd() {
  PROMPT="%n@%m %~$(parse_git_branch)%# "
}


#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias dropb="cd ~/Dropbox"
alias gat="cd ~/code/gat"
alias la="ls -Gla"
alias ls="ls -G"
alias lsd="ls -la | grep '^d'"
alias reading="cd ~/currentlyReading"
alias sp="cd ~/code/soulpeddler-platform/"
alias gems="cd /Library/Ruby/Gems/1.8/gems"
alias spssh="ssh ssh-218766-deploy@soulpeddler.de"
alias si="cd ~/code/sideshow/"
alias teambox="cd ~/code/teambox/"
alias torrent="cd ~/Documents/Azureus\ Downloads/"
alias newrails="git clone ssh://git@flov.org:22322/var/repos/railsexample"
alias uniproject="cd /Library/WebServer/Documents/uniproject/"
alias du="du -sh"
# Git aliases:
alias autod="rake db:auto:migrate"
alias locale="git checkout -b local"
alias master="git checkout master"
alias gb="git branch"
alias gba="git branch -a"
alias gd="git diff | mate"
alias gl="git pull"
alias gp="git push"
alias gits="git status"
alias gitch="git checkout"
alias gitb="git branch"
alias gita="git add"
alias gitd="git diff"
alias gitc="git commit"
alias gitr="git remote"
alias gitp="git pull origin master"


alias gemi="sudo gem install"


export PATH="/usr/local/mysql/bin:${PATH}:/usr/local/git/bin"
function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[0;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac
 
PS1="${TITLEBAR}\
$GREEN\w$BLUE\$(parse_git_branch)\
$WHITE: "
PS2='> '
PS4='+ '
}
proml

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH


