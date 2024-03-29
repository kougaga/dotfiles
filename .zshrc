#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# kubectl aliases
alias k="kubectl"
alias kgx="kubectl config get-contexts"

# docker aliases
alias d="docker"
alias dps="docker ps -a"
alias dimg="docker images"

# Enable kubectl autocompletion
source <(kubectl completion zsh)

# aws-iam-authenticator path
export PATH=$PATH:$HOME/bin

# VIM as editor for the kubectl edit command
export KUBE_EDITOR="vim"

# eksctl completion for zsh
fpath=($fpath ~/.zsh/completion)

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Add golang path
export PATH=$PATH:/usr/local/go/bin
export GOPATH=${HOME}/go

autoload -U compinit
compinit
