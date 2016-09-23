user_commands=(
  list-units is-active status show help list-unit-files
<<<<<<< HEAD
<<<<<<< HEAD
  is-enabled list-jobs show-environment cat list-timers)
=======
  is-enabled list-jobs show-environment cat)
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
  is-enabled list-jobs show-environment cat list-timers)
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6

sudo_commands=(
  start stop reload restart try-restart isolate kill
  reset-failed enable disable reenable preset mask unmask
  link load cancel set-environment unset-environment
  edit)

for c in $user_commands; do; alias sc-$c="systemctl $c"; done
for c in $sudo_commands; do; alias sc-$c="sudo systemctl $c"; done

alias sc-enable-now="sc-enable --now"
alias sc-disable-now="sc-disable --now"
alias sc-mask-now="sc-mask --now"
