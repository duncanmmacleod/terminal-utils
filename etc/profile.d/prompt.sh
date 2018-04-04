#
# Prompt styling
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# set TERM
if [[ "$TERM" == "xterm"* && -e /usr/share/terminfo/x/xterm-256color ]]; then
    export TERM=xterm-256color
fi

# define colours
_COLOR_BLACK=39
_COLOR_RED=31
_COLOR_GREEN=32
_COLOR_YELLOW=33
_COLOR_BLUE=34
_COLOR_MAGENTA=35
_COLOR_CYAN=36
_COLOR_LIGHT_RED=91
_COLOR_LIGHT_GREEN=92
_COLOR_LIGHT_YELLOW=93
_COLOR_LIGHT_BLUE=94
_COLOR_LIGHT_MAGENTA=95
_COLOR_LIGHT_CYAN=96
_COLOR_WHITE=97

# -- utilities ----------------------------------

_prompt_git_branch() {
    local branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'`
    if [ -n "$branch" ]; then
        echo "$branch"
    else
        return
    fi
}

_prompt_user_host() {
    # if in screen, use blue hostname
    case $TERM in
        screen)
            echo "\[\033[${_COLOR_LIGHT_BLUE}m\]\h"
            return 0
            ;;
    esac
    # otherwise use red for shared account, or yellow
    case `whoami` in
        root|detchar|cbc)
            echo "\[\033[${_COLOR_LIGHT_RED}m\]\u@\h"
            ;;
        *)
            echo "\[\033[${_COLOR_LIGHT_YELLOW}m\]\h"
            ;;
    esac
}

# -- setter -------------------------------------

_set_prompt() {
    case $TERM in
        xterm*|screen)
            local col="\[\033[${_COLOR_LIGHT_YELLOW}m\]"
            local psu=`_prompt_user_host`
            local td="\[\033[${_COLOR_MAGENTA}m\]\A"
            local branch="\[\033[${_COLOR_LIGHT_GREEN}m\]\$(_prompt_git_branch)"
            local dir_="\[\033[${_COLOR_LIGHT_CYAN}m\]\W"
            local endcol="\[\033[00m\]"
            PS1="$col[$psu $td ${dir_}$branch$col]\$ $endcol"
            ;;
        *)
            PS1="[\h \@ \W]\\$ "
            ;;
    esac
    export PS1
}

_set_prompt  # actually set the prompt for this session
