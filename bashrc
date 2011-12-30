# ENVIRONMENT VARIABLES
export PATH="~/.bash:/usr/local/bin:/usr/local/sbin:$PATH"

#This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

source ~/.git-completion.bash

# ALIASES
alias reload="source ~/.bashrc"

# ENVIRONMENT
print_before_the_prompt() {
  printf "\n%s: %s\n" "$USER" "$PWD"
}

PROMPT_COMMAND=print_before_the_prompt
PS1=':'
