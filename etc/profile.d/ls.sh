#
# Profile setter for ls
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# Set ls colors
[[ -z ${LS_COLORS} ]] && `command -v dircolors > /dev/null` &&\
    eval "`dircolors`"

if [[ "${OSTYPE}" == "linux-gnu" ]]; then
    alias ls="ls --color=auto"
fi
