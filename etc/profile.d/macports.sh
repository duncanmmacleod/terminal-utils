#
# Profile setter for macports
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

if [[ "${OSTYPE}" == "darwin"* ]] && [ -f /opt/local/bin/port ]; then
    alias portupdate="sudo port selfupdate && port outdated && sudo port upgrade outdated"
    alias portinstall="sudo port -N install"
    alias portclean="sudo port clean --all installed && sudo port -f uninstall inactive"
fi


function portchecksum {
    local tarball=$1
    echo "checksums     rmd160 `openssl dgst -rmd160 $tarball | cut -d\  -f2` \\"
    echo "              sha256 `openssl dgst -sha256 $tarball | cut -d\  -f2` \\"
    echo "              size   `stat -f%z $tarball`"
}
