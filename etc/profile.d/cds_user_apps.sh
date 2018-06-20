#!/bin/bash
#
# Profile setter for the LIGO Laboratory's cds_user_apps repository
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

export USERAPPS_DIR=${HOME}/svn/cds_user_apps/trunk
USERAPPS_ENV=${USERAPPS_DIR}/etc/userapps-user-env.sh

if [ -f ${USERAPPS_ENV} ]; then
    cleanpath USERAPPS_LIB_PATH
    for _obs in h l; do
        ifo=${_obs}1
        site=l${_obs}o
        . ${USERAPPS_ENV}
        if [ -n ${USERAPPS_LIB_PATH} ]; then
            MATLABPATH=${USERAPPS_LIB_PATH}:${MATLABPATH}
        fi
    done
    unset _obs ifo site
fi

cleanpath MATLABPATH
export MATLABPATH
