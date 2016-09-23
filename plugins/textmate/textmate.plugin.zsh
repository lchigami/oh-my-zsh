# If the tm command is called without an argument, open TextMate in the current directory
# If tm is passed a directory, cd to it and open it in TextMate
<<<<<<< HEAD
# If tm is passed anything else (i.e., a list of files and/or options), pass them all along
#    This allows easy opening of multiple files.
function tm() {
	if [[ -z $1 ]]; then
		mate .
	elif [[ -d $1 ]]; then
		mate $1
		cd $1
	else
		mate "$@"
=======
# If tm is passed a file, open it in TextMate
function tm() {
	if [[ -z $1 ]]; then
		mate .
	else
		mate $1
		if [[ -d $1 ]]; then
			cd $1
		fi
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
	fi
}
