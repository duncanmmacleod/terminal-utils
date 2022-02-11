#!/bin/bash
#
# Profile parent script
# Use this to source all of the profile.d scripts provided in this repo
#
# NB: scripts only get executed for an interactive session ('i' in $_)
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#


# provide custom readlink for people who don't have `readlink`
readlink() {
    [[ "$1" == "-f" ]] && shift 1
    ${PYTHON:-python3} -c "import os,sys; print(os.path.realpath('$@'))"
}

# source all of the login scripts
_here=$(cd "$(dirname $(readlink "${BASH_SOURCE[0]}"))" && pwd)
_profile_dir="${_here}/profile.d"
if [ -d ${_profile_dir} ] && [[ "$-" == *"i"* ]]; then
    for _profile in ${_profile_dir}/*.sh; do
        . ${_profile}
    done
fi

unset -f readlink
