# vim default editor
export EDITOR=vim
export PATH="$HOME/tools/vim74/bin:$HOME/.local/bin:$PATH"

# useful aliases
alias be='bundle exec'
alias bi='bundle install'

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias gpr='git pull --rebase'
alias gp='git push'
alias gs='git status'

alias grid='RBENV_VERSION=2.1.2 grid'
alias dropship='RBENV_VERSION=2.1.2 dropship'

alias psa='ps aux | grep'

alias svim='sudo /home/vagrant/tools/vim74/bin/vim'

alias sp='se ./bin/rspec --fail-fast'

alias sulti='s start redis; s start rabbitmq; s start elasticsearch-1.3; s start mysql55;'

alias rd='se ./bin/rake db:reset'
alias rdt='se ./bin/rake db:reset RAILS_ENV=test'

# tools
[ -f ~/.dotfiles/git-prompt.sh ] && source ~/.dotfiles/git-prompt.sh
[ -f ~/.dotfiles/git-completion.bash ] && source ~/.dotfiles/git-completion.bash

# Git completion for aliases
__git_complete gco _git_checkout
__git_complete gp _git_push
__git_complete gpr _git_pull

# git prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\$ '

# disable ctrl+s
stty -ixon
