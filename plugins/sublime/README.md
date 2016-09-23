## sublime

Plugin for Sublime Text, a cross platform text and code editor, available for Linux, Mac OS X, and Windows.

### Requirements

 * [Sublime Text](http://www.sublimetext.com/)

### Usage

 * If `st` command is called without an argument, launch Sublime Text

 * If `st` is passed a directory, `cd` to it and open it in Sublime Text

 * If `st` is passed a file, open it in Sublime Text

 * If `stt` command is called, it is equivalent to `st .`, opening the current folder in Sublime Text
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6

 * If `sst` command is called, it is like `sudo st`, opening the file or folder in Sublime Text. Useful for editing system protected files.

 * If `stp` command is called, it find a `.sublime-project` file by traversing up the directory structure. If there is no `.sublime-project` file, but if the current folder is a Git repo, opens up the root directory of the repo. If the current folder is not a Git repo, then opens up the current directory.
<<<<<<< HEAD
=======
 
 * If `sst` command is called, it is like `sudo st`, opening the file or folder in Sublime Text. Useful for editing system protected files.
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
