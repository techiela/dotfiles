# Check for an interactive session
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

#export PS1="\t \u@\h:\w\\$ "
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export MAIL=""

# zsh_history
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTIGNORE=ls:hg:h
export HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S, '

export IGNOREEOF=2 # ignore logout by ctrl+d up to twice

stty stop undef # disable ctrl-s

export http_proxy=""
export https_proxy=$http_proxy
export EDITOR="vim"

eval "$(rbenv init -)"
export JAVA_HOME="/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home"
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'

alias a='awk'
alias b='popd > /dev/null' # history back
alias c='cat'
alias d='pushd > /dev/null' # stack current directory path on history and then cd
alias e='echo'
alias f='find'
alias g='git'
alias h='history'
alias i=''
alias j=''
alias k='kubectl'
alias l='ls -CFa1'
alias m=''
alias n='nkf'
alias o='open'
alias p='pwd -P' # -P: resolve symlink
alias q=''
alias r=''
alias s='sed'
alias t='tail'
alias u='sudo su'
alias v='vim'
alias w='wget'
alias x='xargs'
alias y=''
alias z='zcat'
alias A=''
alias B=''
alias C=''
alias D='df -h'
alias E='export'
alias F=''
alias G='grep'
alias H='head'
alias I=''
alias J=''
alias K=''
alias L='locate'
alias M=''
alias N=''
alias O=''
alias P=''
alias Q=''
alias R=''
alias S=''
alias T=''
alias U=''
alias V='vagrant'
alias W=''
alias X=''
alias Y=''
alias Z=''
alias 1=''
alias 2=''
alias 3=''
alias 4=''
alias 5=''
alias 6=''
alias 7=''
alias 8=''
alias 9=''
alias 0=''

alias Gv='grep -v'
alias hg='eval $(history | cut -c 8-|peco)'
alias di='diff'
alias da='date "+%Y-%m-%d %H:%M:%S"'
alias ll='l -l'
alias llt='l -lt'
alias lltr='l -ltr'
alias ..='d ..'
alias ~~='d ~'
alias tf='tail -F'
alias gs='git status'
alias gb='git branch'
alias gsh='git show'
alias gl='git log'
alias ga='git add .'
alias gc='git commit'
alias gd='git diff'
alias gf='git fetch'
source ~/.git-completion.sh
alias updatedb='sudo /usr/libexec/locate.updatedb'

function gp() {
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    read "INPUT?The branch [${BRANCH}] will be pushed to remote. (y/n)"
    if [ "${INPUT}" = "y" ]
	then
        git push origin ${BRANCH}
    fi
}

function gpl() {
    BRANCH=master
    if [ $# -gt 0 ]; then
        BRANCH=$1
    fi
    echo "target branch is ${BRANCH}"
    git pull --no-ff origin ${BRANCH}
}

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# https://superuser.com/questions/523564/emacs-keybindings-in-zsh-not-working-ctrl-a-ctrl-e
bindkey -e
