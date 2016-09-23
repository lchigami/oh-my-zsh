<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
() {
  emulate -L zsh

  if ! (( $+commands[cask] )); then
    print "zsh cask plugin: cask command not found" >&2
    return
  fi

  cask_base=${commands[cask]:h:h}

  # Plain cask installation location (for Cask 0.7.2 and earlier)
  comp_files=($cask_base/etc/cask_completion.zsh)

  # Mac Homebrew installs the completion in a different location
  if (( $+commands[brew] )); then
    comp_files+=($(brew --prefix)/share/zsh/site-functions/cask_completion.zsh)
  fi

  # Load first found file
  for f in $comp_files; do
    if [[ -f "$f" ]]; then
      source "$f"
      break
    fi
  done
}
<<<<<<< HEAD
=======
if which cask &> /dev/null; then
  source $(dirname $(which cask))/../etc/cask_completion.zsh
else
  print "zsh cask plugin: cask not found"
fi
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
