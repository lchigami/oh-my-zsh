# CakePHP 3 basic command completion
_cakephp3_get_command_list () {
<<<<<<< HEAD
	bin/cake Completion commands
}

_cakephp3_get_sub_command_list () {
	bin/cake Completion subcommands ${words[2]}
}

_cakephp3_get_3rd_argument () {
	bin/cake ${words[2]} ${words[3]} | \grep '\-\ '| \awk '{print $2}'
}

_cakephp3 () {
	local -a has3rdargument
	has3rdargument=("all" "controller" "fixture" "model" "template")
	if [ -f bin/cake ]; then
		if (( CURRENT == 2 )); then
			compadd $(_cakephp3_get_command_list)
		fi
		if (( CURRENT == 3 )); then
			compadd $(_cakephp3_get_sub_command_list)
		fi
		if (( CURRENT == 4 )); then
			if [[ ${has3rdargument[(i)${words[3]}]} -le ${#has3rdargument} ]]; then
				compadd $(_cakephp3_get_3rd_argument)
			fi
		fi
=======
	cakephp3commands=($(bin/cake completion commands));printf "%s\n" "${cakephp3commands[@]}"
}

_cakephp3 () {
  if [ -f bin/cake ]; then
    compadd `_cakephp3_get_command_list`
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
  fi
}

compdef _cakephp3 bin/cake
compdef _cakephp3 cake

#Alias
alias c3='bin/cake'
<<<<<<< HEAD
=======

>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
alias c3cache='bin/cake orm_cache clear'
alias c3migrate='bin/cake migrations migrate'
