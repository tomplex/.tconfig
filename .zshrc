# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git tmux sudo command-not-found common-aliases debian docker npm pip pyenv python web-search wd urltools virtualz zsh-autoenv)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/go/bin

export EDITOR="vim"
export PAGER="less"

source "${HOME}/.zaliases"

