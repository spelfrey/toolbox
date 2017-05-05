if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

if which jenv > /dev/null; then eval "$(jenv init -)"; fi
PATH=$PATH:/usr/local/sbin
export JENV_ROOT=/usr/local/var/jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias sublime="open -a /Applications/Sublime\ Text.app"
alias reload="source ~/.bash_profile"
alias dbstart="mysql.server start"
alias dbstop="mysql.server stop"
alias dbstatus="mysql.server status"

alias di="docker images"
alias drmi="docker rmi"
alias dps="docker ps -a"
alias drm="docker rm"
alias dcu="docker-compose up"

# Old Code Climate.....might need updating to new Docker
# alias ccStart="docker-machine start default && eval $(docker-machine env)"
# alias loadCC="eval $(docker-machine env)"
# alias ccStop="docker-machine stop default"
