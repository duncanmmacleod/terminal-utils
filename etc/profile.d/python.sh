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
    shift 1 || package="."
    local cmd="python -m pip install --upgrade --upgrade-strategy=only-if-needed $package $@"
    echo "$ ${cmd}"
    eval ${cmd}
}

alias pipr="pip-reinstall"

# -- warnings -----------------------------------------------------------------

# always show DeprecationWarnings
PYTHONWARNINGS="${PYTHONWARNINGS},module::DeprecationWarning,module::PendingDeprecationWarning"

# hide annoying type warnings from backports.configparser
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:You passed a bytestring:DeprecationWarning"

# hide warnings about SafeConfigParser
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:The SafeConfigParser:DeprecationWarning"

# hide warnings about parser.read_file
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:This method will be removed in future versions.  Use 'parser.read_file()' instead:DeprecationWarning"

# hide warnings about elementwise comparisons
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:elementwise != comparison failed; this will raise an error in the future:DeprecationWarning"

# hide warnings about imp module
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:the imp module:DeprecationWarning"

export PYTHONWARNINGS
