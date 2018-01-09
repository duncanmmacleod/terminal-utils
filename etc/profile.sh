#!/bin/bash
#
# Profile parent script
# Use this to source all of the profile.d scripts provided in this repo
#
# NB: scripts only get executed for an interactive session ('i' in $_)
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# declare an alias for 'readlink' on macports systems
if [[ ${OSTYPE} == *"darwin"* ]]; then
    alias readlink="greadlink"
fi

# source all of the login scripts
_here=$(cd "$(dirname $(readlink -f "${BASH_SOURCE[0]}"))" && pwd)
_profile_dir="${_here}/profile.d"
if [ -d ${_profile_dir} ] && [[ "$-" == *"i"* ]]; then
    for _profile in ${_profile_dir}/*.sh; do
        . ${_profile}
    done
fi

# undeclare the alias
if [[ ${OSTYPE} == *"darwin"* ]]; then
    unalias readlink 2>/dev/null
fi
