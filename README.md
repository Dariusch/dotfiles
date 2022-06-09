# My Dotfiles

![dotfiles](https://dotfiles.github.io/images/dotfiles-logo.png)

These are my dotfiles which I use every day.

The dotfiles are managed by [yadm](https://github.com/TheLocehiliosan/yadm), a git based dotfile manager.

## Prerequisites

### Homebrew

First we will need [Homebrew](https://brew.sh/), a package manager for macOS.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

#### yadm

With homebrew installed we can install yadm:

```shell
brew install yadm
```

#### GitHub access

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

## Manual steps

### zsh stuff

You might need to re-run som post-installation scripts as brew does not execute them:

```shell
# install oh-my-zsh as there is no brew formula
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/kubermatic/fubectl.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fubectl
```

### ruby

```shell
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
curl -sSL https://get.rvm.io | bash -s stable --rails
```
