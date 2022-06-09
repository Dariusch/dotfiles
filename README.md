# My Dotfiles

![dotfiles](https://dotfiles.github.io/images/dotfiles-logo.png)

These are my dotfiles which I use every day.

The dotfiles are managed by [yadm](https://github.com/TheLocehiliosan/yadm), a git based dotfile manager.

## Prerequisites

## Homebrew

First we will need [Homebrew](https://brew.sh/), a package manager for macOS.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### yadm

With homebrew installed we can install yadm:

```shell
brew install yadm
```

### GitHub access

To clone the repository via ssh we need to generate a [ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

After you generated the ssh key run the following commands:

```shell
brew install gh
# make sure to select your previously created ssh key to be added to GitHub
gh auth login
```

## Install your dotfiles

```shell
yadm clone --bootstrap git@github.com/Dariusch/dotfiles.git

brew bundle
```

## yadm cheatsheet

```shell
# Add files/changes
yadm add <important file>
yadm commit

# push changes to remote
yadm push
```
