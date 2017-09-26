#!/bin/bash
#
# Profile setter for python
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# get vital information from python itself
read PYTHON_VERSION PYTHON_USER_BASE PYTHON_USER_SITE <<< `python -c "
import site; from sys import version_info as vi; print('%s.%s %s %s' % (vi.major, vi.minor, site.getuserbase(), site.getusersitepackages()))"`
export PYTHON_VERSION PYTHON_USER_BASE PYTHON_USER_SITE

# set --user PATH
PATH=${PYTHON_USER_BASE}/bin:${PATH}

# -- utilities ----------------------------------------------------------------

pip-reinstall() {
    local package=$1
    shift
    local version=$1
    shift
    if [ -z ${version} ]; then
        pip_="pip"
    else
        pip_="pip-${version}"
    fi
    local cmd="${pip_} uninstall ${package} -yq && ${pip_} install -q . $@"
    echo "$ ${cmd}"
    eval ${cmd}
}

# -- warnings -----------------------------------------------------------------

# always show DeprecationWarnings
PYTHONWARNINGS="${PYTHONWARNINGS},always::DeprecationWarning"

# hide annoying type warnings from backports.configparser
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:You passed a bytestring:DeprecationWarning"

export PYTHONWARNINGS
