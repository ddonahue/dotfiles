# ENVIRONMENT VARIABLES
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# add .bash directory, if it exists
test -d "$HOME/.zsh" &&
PATH="$HOME/.zsh:$PATH"

# add git completion
source ~/.git-completion.bash
