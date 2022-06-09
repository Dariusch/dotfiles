# My Dotfiles

![dotfiles](https://dotfiles.github.io/images/dotfiles-logo.png)

These are my dotfiles which I use every day.

The dotfiles are managed by [yadm](https://github.com/TheLocehiliosan/yadm), a git based dotfile manager.

## Prerequisites

First we will need [Homebrew](https://brew.sh/), a package manager for macOS.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

With homebrew installed we can install yadm:

```shell
brew install yadm
```

## Install your dotfiles

```shell
yadm clone --bootstrap https://github.com/Dariusch/dotfiles
```

## yadm cheatsheet

```shell
# Add files/changes
yadm add <important file>
yadm commit

# push changes to remote
yadm push
```
