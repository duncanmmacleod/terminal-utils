#
# Profile setter for macports
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

if [[ "${OSTYPE}" == "darwin"* ]] && [ -f /opt/local/bin/port ]; then
    alias portupdate="sudo port selfupdate && sudo port upgrade outdated"
    alias portclean="sudo port clean --all installed && sudo port -f uninstall inactive"
fi
