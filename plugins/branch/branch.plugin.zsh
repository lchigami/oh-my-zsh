# Branch: displays the current Git or Mercurial branch fast.
# Victor Torres <vpaivatorres@gmail.com>
# Oct 2, 2015

function branch_prompt_info() {
  # Defines path as current directory
  local current_dir=$PWD
  # While current path is not root path
  while [[ $current_dir != '/' ]]
  do
    # Git repository
    if [[ -d "${current_dir}/.git" ]]
    then
      echo '±' ${"$(<"$current_dir/.git/HEAD")"##*/}
      return;
    fi
    # Mercurial repository
    if [[ -d "${current_dir}/.hg" ]]
    then
<<<<<<< HEAD
      if [[ -f "$current_dir/.hg/branch" ]]
      then
        echo '☿' $(<"$current_dir/.hg/branch")
      else
        echo '☿ default'
      fi
=======
      echo '☿' $(<"$current_dir/.hg/branch")
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
      return;
    fi
    # Defines path as parent directory and keeps looking for :)
    current_dir="${current_dir:h}"
  done
}
