#!/bin/bash
#
# Profile setter for core utils
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# aliases
alias rm='rm -i'
alias view="vim -R"

# environment
export CLICOLOR=1
export EDITOR=vim

# -- functions ----------------------------------------------------------------

# clean path environment variable of duplicate entries
cleanpath() {
    if [ -z "$1" ]; then
       $1=PATH
    fi
    # map to local variable
    local badpath=$(eval echo \$$1)
    badpath=${badpath%%:}
    # remove duplicates
    badpath="`echo "${badpath}" | awk -v RS=':' -v ORS=":" '!a[$1]++'`"
    # remove trailing colon
    badpath=${badpath%%:}
    # remove leading colon
    badpath=${badpath#:}
    # reset variable and export
    eval $1=${badpath}
    eval export $1
}


# echo a command to the shell as "$ <command>" and then run it
echo_and_execute() {
    echo "$ $@"
    "$@"
}
