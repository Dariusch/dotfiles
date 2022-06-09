# Great explenation on the load order of zsh files
# https://apple.stackexchange.com/questions/388622/zsh-zprofile-zshrc-zlogin-what-goes-where/388623#388623

# tldr: .zprofile sets the environment for login shells

eval "$(/opt/homebrew/bin/brew shellenv)"
