#!/bin/bash

echo "Setting up your machine..."

echo "Installing xcode tools..."
sudo xcode-select --install

set -e

echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Setting up homebrew and installing basic packages"
brew tap caskroom/cask
brew tap caskroom/versions
brew cask

cd "${BASH_SOURCE%/*}" && brew bundle install

brew doctor

echo "Installing additional tooling..."

pip install awsume


echo "The following tools may need additional setup in your bash_profile or zshrc"
echo "nodenv - https://github.com/nodenv/nodenv"
echo "rbenv - https://github.com/rbenv/rbenv" 
echo "AWSume - https://github.com/trek10inc/awsume"
