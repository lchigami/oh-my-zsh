# Symfony2 basic command completion

_symfony_console () {
  echo "php $(find . -maxdepth 2 -mindepth 1 -name 'console' -type f | head -n 1)"
}

_symfony2_get_command_list () {
   `_symfony_console` --no-ansi | sed "1,/Available commands/d" | awk '/^  ?[^ ]+ / { print $1 }'
}

_symfony2 () {
   compadd `_symfony2_get_command_list`
}

compdef _symfony2 '`_symfony_console`'
compdef _symfony2 'app/console'
compdef _symfony2 'bin/console'
compdef _symfony2 sf

#Alias
alias sf='`_symfony_console`'
alias sfcl='sf cache:clear'
alias sfsr='sf server:run -vvv'
alias sfcw='sf cache:warmup'
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
alias sfroute='sf debug:router'
alias sfcontainer='sf debug:container'
alias sfgb='sf generate:bundle'
alias sfdev='sf --env=dev'
alias sfprod='sf --env=prod'
<<<<<<< HEAD
=======
alias sfroute='sf router:debug'
alias sfcontainer='sf container:debug'
alias sfgb='sf generate:bundle'
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
