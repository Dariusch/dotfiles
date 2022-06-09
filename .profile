#!/bin/bash

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export EDITOR="code ."
export KUBE_EDITOR="nano"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.aliases ] && source ~/.aliases
eval $(thefuck --alias)

# Golang
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$(go env GOPATH)/bin

# java
export PATH="/usr/local/opt/openjdk@18/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# node/nvm
export NVM_DIR="$HOME/.nvm"
export NODE_OPTIONS="--max-old-space-size=8192"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Python
export PATH=$HOME/Library/Python/3.9/bin:$PATH

# VS Code
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
