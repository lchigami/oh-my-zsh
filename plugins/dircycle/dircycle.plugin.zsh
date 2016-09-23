# enables cycling through the directory stack using
# Ctrl+Shift+Left/Right
#
# left/right direction follows the order in which directories
# were visited, like left/right arrows do in a browser

# NO_PUSHD_MINUS syntax:
#  pushd +N: start counting from left of `dirs' output
#  pushd -N: start counting from right of `dirs' output

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
switch-to-dir () {
	while ! builtin pushd -q $1 &>/dev/null; do
		# We found a missing directory: pop it out of the dir stack
		builtin popd -q $1

		# Stop trying if there are no more directories in the dir stack
		[[ ${#dirstack} -eq 0 ]] && break
	done
}

<<<<<<< HEAD
=======
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
insert-cycledleft () {
	emulate -L zsh
	setopt nopushdminus

<<<<<<< HEAD
<<<<<<< HEAD
	switch-to-dir +1
=======
	builtin pushd -q +1 &>/dev/null || true
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
	switch-to-dir +1
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
	zle reset-prompt
}
zle -N insert-cycledleft

insert-cycledright () {
	emulate -L zsh
	setopt nopushdminus

<<<<<<< HEAD
<<<<<<< HEAD
	switch-to-dir -0
=======
	builtin pushd -q -0 &>/dev/null || true
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
	switch-to-dir -0
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
	zle reset-prompt
}
zle -N insert-cycledright


# These sequences work for xterm, Apple Terminal.app, and probably others.
# Not for rxvt-unicode, but it doesn't seem differentiate Ctrl-Shift-Arrow
# from plain Shift-Arrow, at least by default.
# iTerm2 does not have these key combinations defined by default; you will need
# to add them under "Keys" in your profile if you want to use this. You can do
# this conveniently by loading the "xterm with Numeric Keypad" preset.
bindkey "\e[1;6D" insert-cycledleft
bindkey "\e[1;6C" insert-cycledright
