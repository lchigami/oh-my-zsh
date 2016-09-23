<<<<<<< HEAD
_rake_does_task_list_need_generating () {
  [[ ! -f .rake_tasks ]] || [[ Rakefile -nt .rake_tasks ]] || { _is_rails_app && _tasks_changed }
}

_is_rails_app () {
  [[ -e "bin/rails" ]] || [[ -e "script/rails" ]]
}

_tasks_changed () {
  local -a files
  files=(lib/tasks lib/tasks/**/*(N))

  for file in $files; do
    if [[ "$file" -nt .rake_tasks ]]; then
      return 0
    fi
  done

  return 1
=======
_rake_refresh () {
  if [ -f .rake_tasks ]; then
    rm .rake_tasks
  fi
  echo "Generating .rake_tasks..." > /dev/stderr
  _rake_generate
  cat .rake_tasks
}

_rake_does_task_list_need_generating () {
  [[ ! -f .rake_tasks ]] || [[ Rakefile -nt .rake_tasks ]]
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
}

_rake_generate () {
  rake --silent --tasks | cut -d " " -f 2 > .rake_tasks
}

_rake () {
<<<<<<< HEAD
  if [[ -f Rakefile ]]; then
    if _rake_does_task_list_need_generating; then
      echo "\nGenerating .rake_tasks..." >&2
      _rake_generate
    fi
    compadd $(cat .rake_tasks)
  fi
}
compdef _rake rake

rake_refresh () {
  [[ -f .rake_tasks ]] && rm -f .rake_tasks

  echo "Generating .rake_tasks..." >&2
  _rake_generate
  cat .rake_tasks
}
=======
  if [ -f Rakefile ]; then
    if _rake_does_task_list_need_generating; then
      echo "\nGenerating .rake_tasks..." > /dev/stderr
      _rake_generate
    fi
    compadd `cat .rake_tasks`
  fi
}

compdef _rake rake
alias rake_refresh='_rake_refresh'
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
