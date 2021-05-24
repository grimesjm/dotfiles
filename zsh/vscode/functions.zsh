codebackup () {

code --list-extensions > ~/.dotfiles/vscode/extensions.list
cp  ~/Library/Application\ Support/Code/User/keybindings.json ~/.dotfiles/vscode/keybindings.json
cp  ~/Library/Application\ Support/Code/User/settings.json ~/.dotfiles/vscode/settings.json
}