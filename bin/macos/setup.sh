#!/bin/bash

echo "Setting up your machine..."

echo "Installing xcode tools..."
sudo xcode-select --install

echo "Installing homebrew..."
echo -ne '\n'  | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Setting up homebrew and installing basic packages"
brew bundle install

echo "Installing additional tooling..."
set -e
volta install node
volta install yarn
pyenv install 3.8.1 -s
pyenv global 3.8.1
pip install --upgrade pip
echo "y" | AWSUME_SKIP_ALIAS_SETUP=true pip install awsume
echo "y" | pip install requests --user

echo ""
echo ""
echo "The following tools may need additional setup in your bash_profile or zshrc"
echo "rbenv - https://github.com/rbenv/rbenv"
echo "AWSume - https://github.com/trek10inc/awsume"
echo "direnv - https://github.com/direnv/direnv"