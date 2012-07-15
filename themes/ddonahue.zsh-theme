#
# PROMPT
#

# Heart is green or red, depending on error return
PROMPT_STYLE="%(?:%{$fg[green]%}❤ :%{$fg[red]%}❤ %s)"
PROMPT_BRACKET_BEGIN='%{$fg[white]%}['
PROMPT_USER='%{$fg[blue]%}%n'
PROMPT_AT="%{$reset_color%}@"
PROMPT_HOST='%{$fg[red]%}%m'
PROMPT_SEPARATOR='%{$reset_color%}:'
PROMPT_DIR='%{$fg[blue]%}%~'
PROMPT_BRACKET_END='%{$fg[white]%}]'
PROMPT_SIGN='%{$reset_color%}%#'
GIT_PROMPT_INFO='$(git_prompt_info)'
GIT_PROMPT_STATUS='$(git_prompt_status)'

function prompt_char {
echo '⚒ '
}

PROMPT="
${PROMPT_STYLE}${PROMPT_BRACKET_BEGIN}${PROMPT_DIR}${PROMPT_BRACKET_END}%{$reset_color%}
$(prompt_char)"
#$(virtualenv_info)$(prompt_char)%{$reset_color%} "
RPROMPT="${GIT_PROMPT_INFO}${GIT_PROMPT_STATUS}${rbenv_prompt_info}"
#
# Git repository
#
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}%{$_reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%} ♥%{$reset_color%}"


ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}✭"
