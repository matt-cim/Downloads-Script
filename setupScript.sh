#!/usr/bin/env bash
# Setup script for setting up a new Mac OS machine
echo "Starting setup..."

# this takes the most time to install
xcode-select --install

echo -n "Enter name of User ex: bob.smith "
read answer

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$answer/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Check if homebrew is installed, else install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "updating brew..."
brew update

PACKAGES=(
    git
    tmux
    bat
    macvim
    mysql
    fzf
    ctags
    readline
)
echo "Installing packages..."
brew install ${PACKAGES[@]}

brew link --force readline

CASKS=(
    google-chrome
    slack
    microsoft-teams
    microsoft-outlook
)

echo "Installing necessary apps..."
# note "reinstall" if cask downloaded then removed
brew install --cask ${CASKS[@]}
