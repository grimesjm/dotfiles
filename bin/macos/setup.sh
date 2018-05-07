#!/bin/bash

echo "Setting up your machine..."

echo "Installing xcode tools..."
sudo xcode-select --install


echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Setting up homebrew and installing basic packages"
brew tap caskroom/cask
brew tap caskroom/versions
brew cask

cd "${BASH_SOURCE%/*}" && brew bundle install

echo "Installing additional tooling..."

set -e
pip install awsume
awsume --install-plugin https://raw.githubusercontent.com/trek10inc/awsume/master/examplePlugin/console.py https://raw.githubusercontent.com/trek10inc/awsume/master/examplePlugin/console.yapsy-plugin


echo ""
echo ""
echo "The following tools may need additional setup in your bash_profile or zshrc"
echo "nodenv - https://github.com/nodenv/nodenv"
echo "rbenv - https://github.com/rbenv/rbenv" 
echo "AWSume - https://github.com/trek10inc/awsume"
echo "direnv - https://github.com/direnv/direnv"
