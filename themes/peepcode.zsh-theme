#
# Based on Geoffrey Grosenbach's peepcode zsh theme from
# https://github.com/topfunky/zsh-simple
#

git_repo_path() {
  git rev-parse --git-dir 2>/dev/null
}

git_commit_id() {
  git rev-parse --short HEAD 2>/dev/null
}

git_mode() {
  if [[ -e "$repo_path/BISECT_LOG" ]]; then
    echo "+bisect"
  elif [[ -e "$repo_path/MERGE_HEAD" ]]; then
    echo "+merge"
  elif [[ -e "$repo_path/rebase" || -e "$repo_path/rebase-apply" || -e "$repo_path/rebase-merge" || -e "$repo_path/../.dotest" ]]; then
    echo "+rebase"
  fi
}

git_dirty() {
  if [[ "$repo_path" != '.' && `git ls-files -m` != "" ]]; then
    echo " %{$fg_bold[grey]%}✗%{$reset_color%}"
  fi
}

git_prompt() {
  local cb=$(git_current_branch)
  if [ -n "$cb" ]; then
    local repo_path=$(git_repo_path)
    echo " %{$fg_bold[grey]%}$cb %{$fg[white]%}$(git_commit_id)%{$reset_color%}$(git_mode)$(git_dirty)"
  fi
}

local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='
%~
${smiley}  %{$reset_color%}'

<<<<<<< HEAD
<<<<<<< HEAD
if [[ -d ~/.rvm ]] && [[ -e ~/.rvm/bin/rvm-prompt ]]; then
    rvm_prompt='$(~/.rvm/bin/rvm-prompt)'
else
    rvm_prompt=''
fi

RPROMPT='%{$fg[white]%} $rvm_prompt$(git_prompt)%{$reset_color%}'
=======
RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt)$(git_prompt)%{$reset_color%}'
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
RPROMPT='%{$fg[white]%} $(ruby_prompt_info)$(git_prompt)%{$reset_color%}'
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
