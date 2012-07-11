# ENVIRONMENT VARIABLES
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# add .bash directory, if it exists
test -d "$HOME/.zsh" &&
PATH="$HOME/.zsh:$PATH"

# NOTE: Both RBENV and RVM cannot be installed on the same machine or they will cause issues with one another.
# This IF statement is here because at home I prefer RBENV but at work we're using RVM and I wanted to be able to use the same dotfiles in both environments.
# This is solely for convenience and it's understood that both tools will never be installed on the same machine.
# if RBENV exists, use it
# otherwise, fall back to using RVM
if which rbenv > /dev/null;
then
	eval "$(rbenv init -)";
else
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
fi

# add git completion
source ~/.git-completion.bash
