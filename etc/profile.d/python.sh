#!/bin/bash
#
# Profile setter for python
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# get vital information from python itself
PYTHON_VERSION=$(python -c "
from sys import version_info as vi; print('{0[0]}.{0[1]}'.format(vi))")

# -- utilities ----------------------------------------------------------------

pip-reinstall() {
    local package=$1
    shift 1 || package="."
    local cmd="python -m pip install --upgrade --upgrade-strategy=only-if-needed $package $@"
    echo "$ ${cmd}"
    eval ${cmd}
}

alias pipr="pip-reinstall"

pip-download() {
    local package=$1
    shift 1
    local cmd="python -m pip download --no-deps --no-binary=:all: $@ $package"
    echo "$ ${cmd}"
    eval ${cmd}
}

# -- warnings -----------------------------------------------------------------
#
# python warnings are parsed in order left-to-right, so to add overrides,
# add them at the _end_ of the PYTHONWARNINGS variable.

# always show DeprecationWarnings
PYTHONWARNINGS="${PYTHONWARNINGS},default::DeprecationWarning,default::PendingDeprecationWarning"

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

# hide warnings about metadata in ipython/jupyter
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:metadata:DeprecationWarning"

# hide warnings about collections.abc in python>=3.7
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:Using or importing the ABCs:DeprecationWarning"

# hide warnings about unicode file mode
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:'U' mode is deprecated"

# hide deprecation warnings from matplotlib
PYTHONWARNINGS="${PYTHONWARNINGS},ignore:examples,ignore:The text.latex.unicode"

export PYTHONWARNINGS
