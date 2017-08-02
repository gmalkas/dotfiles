# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export EDITOR=vim

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias gpr='git pull --rebase'
alias gp='git push'
alias gs='git status'
alias psa='ps aux | grep'
alias rebar='rebar3'
alias today='date +%Y-%m-%d'
alias yesterday='date --date="1 day ago" +%Y-%m-%d'
alias tomorrow='date --date="tomorrow" +%Y-%m-%d'
alias nlog='cd /opt/work/logbooks && vim -O `yesterday`.logbook `today`.logbook + -c ":winc l" +'

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
export PATH="$HOME/tools/dmux:$HOME/tools/vim/bin:$HOME/tools/rebar3:$HOME/tools/optipng/bin:$PATH"

# erl/iex shell history
export ERL_AFLAGS="-kernel shell_history enabled"
