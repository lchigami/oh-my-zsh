#!/bin/sh

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
_emacsfun()
{
    # get list of emacs frames.
    frameslist=`emacsclient --alternate-editor '' --eval '(frame-list)' 2>/dev/null | egrep -o '(frame)+'`

    if [ "$(echo "$frameslist" | sed -n '$=')" -ge 2 ] ;then
        # prevent creating another X frame if there is at least one present.
        emacsclient --alternate-editor "" "$@"
    else
        # Create one if there is no X window yet.
        emacsclient --alternate-editor "" --create-frame "$@"
    fi
}


# adopted from https://github.com/davidshepherd7/emacs-read-stdin/blob/master/emacs-read-stdin.sh
# If the second argument is - then write stdin to a tempfile and open the
# tempfile. (first argument will be `--no-wait` passed in by the plugin.zsh)
if [ "$#" -ge "2" -a "$2" = "-" ]
then
    tempfile="$(mktemp emacs-stdin-$USER.XXXXXXX --tmpdir)"
    cat - > "$tempfile"
    _emacsfun --no-wait $tempfile
else
    _emacsfun "$@"
<<<<<<< HEAD
=======
# get list of available X windows.
x=`emacsclient --alternate-editor '' --eval '(x-display-list)' 2>/dev/null`

if [ -z "$x" ] || [ "$x" = "nil" ] ;then
    # Create one if there is no X window yet.
    emacsclient --alternate-editor "" --create-frame "$@"
else
    # prevent creating another X frame if there is at least one present.
    emacsclient --alternate-editor "" "$@"
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
fi
