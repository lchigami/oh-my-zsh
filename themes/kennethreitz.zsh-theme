local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

<<<<<<< HEAD
<<<<<<< HEAD
PROMPT='$(virtualenv_prompt_info)%{[03m%}%{$fg[green]%}%c \
$(git_prompt_info)\
\
=======
PROMPT='%{$fg[green]%}%c \
$(git_prompt_info)\
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
PROMPT='$(virtualenv_prompt_info)%{[03m%}%{$fg[green]%}%c \
$(git_prompt_info)\
\
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
%{$fg[red]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='%{$fg[blue]%}%~%{$reset_color%} ${return_code} '

<<<<<<< HEAD
<<<<<<< HEAD
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$reset_color%}%{[03m%}%{$fg[blue]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="!%{$reset_color%} "
=======
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:: %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"

>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$reset_color%}%{[03m%}%{$fg[blue]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="!%{$reset_color%} "
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
