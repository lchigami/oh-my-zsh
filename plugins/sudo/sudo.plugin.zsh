# ------------------------------------------------------------------------------
# Description
# -----------
#
<<<<<<< HEAD
<<<<<<< HEAD
# sudo or sudoedit will be inserted before the command
=======
# sudo will be inserted before the command
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
# sudo or sudoedit will be inserted before the command
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
# * Dongweiming <ciici123@gmail.com>
#
# ------------------------------------------------------------------------------

sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
        LBUFFER="${LBUFFER#sudo }"
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
    elif [[ $BUFFER == $EDITOR\ * ]]; then
        LBUFFER="${LBUFFER#$EDITOR }"
        LBUFFER="sudoedit $LBUFFER"
    elif [[ $BUFFER == sudoedit\ * ]]; then
        LBUFFER="${LBUFFER#sudoedit }"
        LBUFFER="$EDITOR $LBUFFER"
<<<<<<< HEAD
=======
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
    else
        LBUFFER="sudo $LBUFFER"
    fi
}
zle -N sudo-command-line
# Defined shortcut keys: [Esc] [Esc]
bindkey "\e\e" sudo-command-line
