#!/bin/bash

echo "Setting up your machine..."

echo "Installing xcode tools..."
sudo xcode-select --install


echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Setting up homebrew and installing basic packages"
brew bundle install

echo "Installing additional tooling..."

set -e
echo "y" | pip install awsume
echo "y" | awsume --install-plugin https://raw.githubusercontent.com/trek10inc/awsume/master/examplePlugin/console.py https://raw.githubusercontent.com/trek10inc/awsume/master/examplePlugin/console.yapsy-plugin
echo "y" | pip install requests --user
go get -u -v github.com/kubernetes-sigs/aws-iam-authenticator/cmd/aws-iam-authenticator

echo ""
echo ""
echo "The following tools may need additional setup in your bash_profile or zshrc"
echo "nodenv - https://github.com/nodenv/nodenv"
echo "rbenv - https://github.com/rbenv/rbenv" 
echo "AWSume - https://github.com/trek10inc/awsume"
echo "direnv - https://github.com/direnv/direnv"
