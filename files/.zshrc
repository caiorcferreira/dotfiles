# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

plugins=(
  z
  git
  osx
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Load aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Homebrew setup
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Personal directory
export PATH="$PATH:/opt:$HOME/bin"

# Support GNU sed
newpath=$(brew info gnu-sed | grep -o -E "PATH=(.*)" | cut -d "=" -d "\"" -f2 | envsubst)
if [ ! -z "$newpath" ]
then
  export PATH=$newpath
fi

# Docker machine and Docker compose ZSH completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# Python Path
export PATH="/Users/caioferreira/Library/Python/3.7/bin:$PATH"

# Add asdf binaries to PATH
export PATH="$HOME/.asdf/bin:$HOME/.asdf/shims:$PATH"

# Set JAVA_HOME from asdf plugin
if [ -d "$HOME/.asdf/plugins/java" ]
then
    . ~/.asdf/plugins/java/set-java-home.sh
fi
 
# Set GOROOT from asdf plugin
if [ -d "$HOME/.asdf/plugins/golang" ]
then
    export GOROOT=$(asdf where golang)/go
    export GOBIN=$(asdf where golang)/bin
    export PATH="$GOBIN:$PATH"
fi

# Set rust from asdf plugin
if [ -d "$HOME/.asdf/plugins/rust" ]
then
    export CARGO_HOME="$(asdf where rust)/.cargo"
    export PATH="$(asdf where rust)/bin:$CARGO_HOME/bin:$PATH"
fi
