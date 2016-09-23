#  github

<<<<<<< HEAD
<<<<<<< HEAD
This plugin supports working with GitHub from the command line. It provides a few things:
=======
This plugin supports working with GitHub the command line. It provides a few things:
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
This plugin supports working with GitHub from the command line. It provides a few things:
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6

* Sets up the `hub` wrapper and completions for the `git` command if you have `hub` installed.
* Completion for the `github` Ruby gem.
* Convenience functions for working with repos and URLs.

###  Functions

* `empty_gh` - Creates a new empty repo (with a `README.md`) and pushes it to GitHub
* `new_gh` - Initializes an existing directory as a repo and pushes it to GitHub
* `exist_gh` - Takes an existing repo and pushes it to GitHub
* `git.io` - Shortens a URL using [git.io](http://git.io)


##  Installation

[Hub](http://github.com/github/hub) needs to be installed if you want to use it. On OS X with Homebrew, this can be done with `brew install hub`. The `hub` completion definition needs to be added to your `$FPATH` before initializing OMZ.

The [`github` Ruby gem](http://github.com/defunkt/github-gem) needs to be installed if you want to use it.

###  Configuration

These settings affect `github`'s behavior.

#### Environment variables

* `$GITHUB_USER`
* `$GITHUB_PASSWORD`

#### Git configuration options

* `github.user` - GitHub username for repo operations

See `man hub` for more details.

###  Homebrew installation note

<<<<<<< HEAD
<<<<<<< HEAD
If you have installed `hub` using Homebrew, its completions may not be on your `$FPATH` if you are using the system `zsh`. Homebrew installs `zsh` completion definitions to `/usr/local/share/zsh/site-functions`, which will be on `$FPATH` for the Homebrew-installed `zsh`, but not for the system `zsh`. If you want it to work with the system `zsh`, add this to your `~/.zshrc` before it sources `oh-my-zsh.sh`.
=======
If you have installed `hub` using Homebrew, its completions may not be on your `$FPATH` if you are using the system `zsh`. Homebrew installs `zsh` completion definitions to `/usr/local/share/zsh/site-functions`, which on `$FPATH` for the Homebrew-installed `zsh`, but not for the system `zsh`. If you want it to work with the system `zsh`, add this to your `~/.zshrc` before it sources `oh-my-zsh.sh`.
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
If you have installed `hub` using Homebrew, its completions may not be on your `$FPATH` if you are using the system `zsh`. Homebrew installs `zsh` completion definitions to `/usr/local/share/zsh/site-functions`, which will be on `$FPATH` for the Homebrew-installed `zsh`, but not for the system `zsh`. If you want it to work with the system `zsh`, add this to your `~/.zshrc` before it sources `oh-my-zsh.sh`.
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6

```zsh
if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi
```
