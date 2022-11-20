#!/bin/bash
#
# Profile setter auto-update
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

readlink() {
    [[ "$1" == "-f" ]] && shift 1
    ${PYTHON:-python3} -c "import os,sys; print(os.path.realpath('$@'))"
}

# update the git repo hosting this file
_here=$(cd "$(dirname $(readlink -f "${BASH_SOURCE[0]}"))" && pwd)
(cd ${_here} && git pull --rebase --quiet || {
  echo "-- failed to auto-update terminal-utils" 1>&2;
  exit 1;
})
