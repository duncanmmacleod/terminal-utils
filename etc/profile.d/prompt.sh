#
# Prompt styling
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# Set prompt
if [[ "$TERM" == "xterm"* && -e /usr/share/terminfo/x/xterm-256color ]]; then
    export TERM=xterm-256color
fi

# get timestamp in bash
IYellow='0;93m'      # Yellow
BIRed='1;91m'        # Red
BIBlue='\e[1;94m'    # Blue
if [[ "$PS1" ]]; then
    case $TERM in
        xterm*|screen)
            case $USER in
                root)
                    c1=$BIRed
                    c2=$BIYellow
                    psuser="\u@\h"
                    ;;
                detchar|cbc)
                    c1=$IYellow
                    c2=$BIRed
                    psuser='\u@\h'
                    ;;
                *)
                    c1=$IYellow
                    c2=$BIRed
                    psuser="\h"
                    ;;
            esac
            [[ -n "${STY}" ]] && c1=$BIBlue
            PS1="\[\033[${c1}\][${psuser} \A \[\033[${c2}\]\W\[\033[${c1}\]]\$ \[\033[00m\]"
            PS1="\[\033[${c1}\][${psuser} \A \[\033[${c2}\]\W\[\033[${c1}\]]\$ \[\033[00m\]"
            unset c2
            unset c1
            ;;
        *)
            PS1="[\h \@ \W]\\$ "
            ;;
    esac
    export PS1
fi
unset IYellow
unset BIRed
