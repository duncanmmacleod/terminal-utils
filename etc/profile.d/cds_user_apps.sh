#!/bin/bash
#
# Profile setter for the LIGO Laboratory's cds_user_apps repository
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

if [ -z ${USERAPPS_DIR+x} ]; then
    export USERAPPS_DIR=${HOME}/svn/cds_user_apps/trunk
fi
USERAPPS_ENV=${USERAPPS_DIR}/etc/userapps-user-env.sh

if [ -d ${USERAPPS_DIR} ] && [ -f ${USERAPPS_ENV} ]; then
    cleanpath USERAPPS_LIB_PATH
    _ifo=$ifo
    _site=$site
    for _obs in h l; do
        ifo=${_obs}1
        site=l${_obs}o
        . ${USERAPPS_ENV}
        if [ -n ${USERAPPS_LIB_PATH} ]; then
            MATLABPATH=${USERAPPS_LIB_PATH}:${MATLABPATH}
        fi
    done

    # undo variable overrides
    if [ -n $_ifo ]; then
        ifo=$_ifo
        unset _ifo
    else
        unset ifo
    fi
    if [ -n $_site ]; then
        site=$_site
        unset _site
    else
        unset site
    fi
    unset _obs

    cleanpath MATLABPATH
    export MATLABPATH
fi
