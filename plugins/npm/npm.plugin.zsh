<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
(( $+commands[npm] )) && {
    __NPM_COMPLETION_FILE="${ZSH_CACHE_DIR}/npm_completion"

    if [[ ! -f $__NPM_COMPLETION_FILE ]]; then
        npm completion >! $__NPM_COMPLETION_FILE 2>/dev/null
        [[ $? -ne 0 ]] && rm -f $__NPM_COMPLETION_FILE
    fi

    [[ -f $__NPM_COMPLETION_FILE ]] && source $__NPM_COMPLETION_FILE

    unset __NPM_COMPLETION_FILE
}
<<<<<<< HEAD
=======
eval "$(npm completion 2>/dev/null)"
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6

# Install dependencies globally
alias npmg="npm i -g "

# npm package names are lowercase
# Thus, we've used camelCase for the following aliases:

# Install and save to dependencies in your package.json
# npms is used by https://www.npmjs.com/package/npms
alias npmS="npm i -S "

# Install and save to dev-dependencies in your package.json
# npmd is used by https://github.com/dominictarr/npmd
alias npmD="npm i -D "

# Execute command from node_modules folder based on current directory
# i.e npmE gulp
alias npmE='PATH="$(npm bin)":"$PATH"'
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6

# Check which npm modules are outdated
alias npmO="npm outdated"

# Check package versions
alias npmV="npm -v"

# List packages
alias npmL="npm list"

# Run npm start
alias npmst="npm start"

# Run npm test
alias npmt="npm test"

<<<<<<< HEAD
=======
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6
