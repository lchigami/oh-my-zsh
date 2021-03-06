# Set up hub wrapper for git, if it is available; http://github.com/github/hub
if [ "$commands[(I)hub]" ]; then
  if hub --version &>/dev/null; then
    eval $(hub alias -s zsh)
  fi
fi

# Functions #################################################################

# Based on https://github.com/dbb/githome/blob/master/.config/zsh/functions

# empty_gh <NAME_OF_REPO>
#
# Use this when creating a new repo from scratch.
# Creates a new repo with a blank README.md in it and pushes it up to GitHub.
empty_gh() { # [NAME_OF_REPO]
  emulate -L zsh
  local repo=$1

  mkdir "$repo"
  touch "$repo/README.md"
  new_gh "$repo"
}

# new_gh [DIRECTORY]
#
# Use this when you have a directory that is not yet set up for git.
# This function will add all non-hidden files to git.
new_gh() { # [DIRECTORY]
  emulate -L zsh
  local repo="$1"
  cd "$repo" \
    || return

  git init \
    || return
  # add all non-dot files
  print '.*'"\n"'*~' >> .gitignore
  git add [^.]* \
    || return
  git add .gitignore \
    || return
  git commit -m 'Initial commit.' \
    || return
  hub create \
    || return
  git push -u origin master \
    || return
}

# exist_gh [DIRECTORY]
#
# Use this when you have a git repo that's ready to go and you want to add it
# to your GitHub.
exist_gh() { # [DIRECTORY]
  emulate -L zsh
  local repo=$1
  cd "$repo"

  hub create \
    || return
  git push -u origin master
}

# git.io "GitHub URL"
#
# Shorten GitHub url, example:
#   https://github.com/nvogel/dotzsh    >   http://git.io/8nU25w  
# source: https://github.com/nvogel/dotzsh
# documentation: https://github.com/blog/985-git-io-github-url-shortener
#
git.io() {
  emulate -L zsh
<<<<<<< HEAD
<<<<<<< HEAD
  curl -i -s https://git.io -F "url=$1" | grep "Location" | cut -f 2 -d " "
=======
  curl -i -s http://git.io -F "url=$1" | grep "Location" | cut -f 2 -d " "
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
  curl -i -s https://git.io -F "url=$1" | grep "Location" | cut -f 2 -d " "
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
}

# End Functions #############################################################

