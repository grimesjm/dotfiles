#Choose brew over system
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

#Dotnet tools core SDK
export PATH="$HOME/.dotnet/tools/:$PATH"

#Golang
export GOPATH="$HOME/go"

#Ruby
eval "$(rbenv init -)"

#Sigh Python
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

#Direnv management for zsh
eval "$(direnv hook zsh)"

#Java management
[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"

#Node management
export VOLTA_HOME="$HOME/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"

#Rust
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"