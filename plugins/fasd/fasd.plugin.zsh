if [ $commands[fasd] ]; then # check if fasd is installed
  fasd_cache="${ZSH_CACHE_DIR}/fasd-init-cache"
  if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
    fasd --init auto >| "$fasd_cache"
  fi
  source "$fasd_cache"
  unset fasd_cache

<<<<<<< HEAD
<<<<<<< HEAD
  alias v="f -e $EDITOR"
=======
  alias v='f -e vim'
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
  alias v="f -e $EDITOR"
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
  alias o='a -e open_command'
fi
