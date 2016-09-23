# get the node.js version
function nvm_prompt_info() {
<<<<<<< HEAD
  [[ -f "$NVM_DIR/nvm.sh" ]] || return
=======
  [ -f "$HOME/.nvm/nvm.sh" ] || return
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
  local nvm_prompt
  nvm_prompt=$(node -v 2>/dev/null)
  [[ "${nvm_prompt}x" == "x" ]] && return
  nvm_prompt=${nvm_prompt:1}
  echo "${ZSH_THEME_NVM_PROMPT_PREFIX}${nvm_prompt}${ZSH_THEME_NVM_PROMPT_SUFFIX}"
}
