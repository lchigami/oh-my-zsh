# rake-fast

Fast rake autocompletion plugin.

<<<<<<< HEAD
This plugin caches the output for later usage and significantly speeds it up.
It generates a `.rake_tasks` cache file in parallel to the Rakefile. It also
checks the file modification time to see if it needs to regenerate the cache
file.

This is entirely based on [this pull request by Ullrich Schäfer](https://github.com/robb/.dotfiles/pull/10/),
which is inspired by [this Ruby on Rails trick from 2006](http://weblog.rubyonrails.org/2006/3/9/fast-rake-task-completion-for-zsh/).

Think about that. 2006.

----------

Since August of 2016, it also checks if it's in a Rails project and looks at
rake files inside `lib/tasks` and their modification time to know if the
cache file needs to be regenerated.

=======
This script caches the output for later usage and significantly speeds it up. It generates a .rake_tasks cache file in parallel to the Rakefile. It also checks the file modification dates to see if it needs to regenerate the cache file.

This is entirely based on [this pull request by Ullrich Schäfer](https://github.com/robb/.dotfiles/pull/10/), which is inspired by [this Ruby on Rails trick from 2006](http://weblog.rubyonrails.org/2006/3/9/fast-rake-task-completion-for-zsh/).

Think about that. 2006.

>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
## Installation

Just add the plugin to your `.zshrc`:

<<<<<<< HEAD
```zsh
plugins=(... rake-fast)
=======
```bash
plugins=(foo bar rake-fast)
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
```

You might consider adding `.rake_tasks` to your [global .gitignore](https://help.github.com/articles/ignoring-files#global-gitignore)

## Usage

<<<<<<< HEAD
Type `rake`, then press tab.

If you want to force the regeneration of the `.rake_tasks` file, run `rake_refresh`.
=======
`rake`, then press tab
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
