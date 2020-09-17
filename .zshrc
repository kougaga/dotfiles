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
#
# Enable kubectl autocompletion
source <(kubectl completion zsh)

# VIM as editor for the kubectl edit command
KUBE_EDITOR="vim"

# eksctl completion for zsh
fpath=($fpath ~/.zsh/completion)

autoload -U compinit
compinit
