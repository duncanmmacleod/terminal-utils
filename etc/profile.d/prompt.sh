#!/bin/bash
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

# switch colours between macOS and others
# just so users know where they are
if [ "$(uname)" == "Darwin" ]; then
   _COLOR1="${_COLOR_LIGHT_GREEN}"
   _COLOR2="${_COLOR_LIGHT_YELLOW}"
else
   _COLOR1="${_COLOR_LIGHT_YELLOW}"
   _COLOR2="${_COLOR_LIGHT_GREEN}"
fi

# -- utilities ----------------------------------

_prompt_git_branch() {
    local branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    if [[ "$branch" == "(HEAD detached at "* ]]; then  # on a tag (or similar)
        echo " ($(echo $branch | cut -d\  -f4)"  # display tag name
    elif [ -n "$branch" ]; then
        # annotate branch name with tag if exactly on a tag (but not detached)
        local tag=$(git describe --exact-match --tags HEAD 2> /dev/null || true)
        if [ -n "$tag" ]; then
            echo " ($branch@$tag)"
        else
            echo " ($branch)"
        fi
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
    # otherwise use red for shared account, or default
    case `whoami` in
        root|detchar|cbc)
            echo "\[\033[${_COLOR_LIGHT_RED}m\]\u@\h"
            ;;
        *)
            echo "\[\033[${_COLOR1}m\]\h"
            ;;
    esac
}

# -- setter -------------------------------------

_set_ps4() {
    case $TERM in
        # colour support
        xterm*|screen)
            local col="\[\033[${_COLOR1}m\]"
            local endcol="\[\033[00m\]"
            PS4="$col+ $endcol"
            ;;
        # basic
        *)
            PS4="+ "
            ;;
    esac
    export PS4
}


_set_prompt() {
    local LAST_EXIT="$?"

    case $TERM in
        # colour support
        xterm*|screen)
            local col="\[\033[${_COLOR1}m\]"
            local psu=`_prompt_user_host`
            local td="\[\033[${_COLOR_MAGENTA}m\]\A"
            local branch="\[\033[${_COLOR2}m\]\$(_prompt_git_branch)"
            local dir_="\[\033[${_COLOR_LIGHT_CYAN}m\]\W"
            local endcol="\[\033[00m\]"
            PS1="$col[$psu $td ${dir_}$branch$col]\n\$ $endcol"
            PS4="$col+ $endcol"
            EXITSTATUS="\[\033[${_COLOR_RED}m\]!$endcol"
            ;;
        # basic
        *)
            PS1="[\h \@ \W]\n\\$ "
            PS4="+ "
            EXITSTATUS="!"
            ;;
    esac
    # preserve conda prompt modifier
    if [ ! -z ${CONDA_PROMPT_MODIFIER} ]; then
        PS1="${CONDA_PROMPT_MODIFIER}${PS1}"
    fi
    # show exit code
    if [ ${LAST_EXIT} -ne 0 ]; then
        PS1="${EXITSTATUS}${PS1}"
    fi

}

# actually set the prompt for this session
_set_ps4
PROMPT_COMMAND=_set_prompt
