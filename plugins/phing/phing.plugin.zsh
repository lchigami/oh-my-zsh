<<<<<<< HEAD
<<<<<<< HEAD
_phing () {
  if [ -f build.xml ]; then
    compadd $(phing -l|grep -v "\[property\]"|grep -v "Buildfile"|sed 1d|grep -v ":$" |grep -v "^\-*$"|grep -v "Warning:"|awk '{print $1}')
=======
_phing_does_target_list_need_generating () {
  [ ! -f .phing_targets ] && return 0;
  [ build.xml -nt .phing_targets ] && return 0;
  return 1;
}

_phing () {
  if [ -f build.xml ]; then
    if _phing_does_target_list_need_generating; then
      phing -l|grep -v "\[property\]"|grep -v "Buildfile"|sed 1d|grep -v ":$" |grep -v "^\-*$"|awk '{print $1}' > .phing_targets
    fi
    compadd `cat .phing_targets`
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
_phing () {
  if [ -f build.xml ]; then
    compadd $(phing -l|grep -v "\[property\]"|grep -v "Buildfile"|sed 1d|grep -v ":$" |grep -v "^\-*$"|grep -v "Warning:"|awk '{print $1}')
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
  fi
}

compdef _phing phing
