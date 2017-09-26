#!/bin/bash
#
# Profile parent script
# Use this to source all of the profile.d scripts provided in this repo
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

[[ ${OSTYPE} == *"darwin"* ]] && alias readlink="greadlink"

_here=$(cd "$(dirname $(readlink -f "${BASH_SOURCE[0]}"))" && pwd)
_profile_dir="${_here}/profile.d"
if [ -d ${_profile_dir} ] && [[ "$-" == *"i"* ]]; then
    for _profile in ${_profile_dir}/*.sh; do
        . ${_profile}
    done
fi

[[ ${OSTYPE} == *"darwin"* ]] && unalias readlink 2>/dev/null
