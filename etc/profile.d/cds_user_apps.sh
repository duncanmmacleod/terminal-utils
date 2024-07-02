#!/bin/bash
#
# Profile setter for the LIGO Laboratory's cds_user_apps repository
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

if [ -z ${USERAPPS_DIR+x} ]; then
    export USERAPPS_DIR=${HOME}/svn/cds_user_apps/trunk
fi

USERAPPS_ENV="${USERAPPS_DIR}/etc/userapps-user-env.sh"

remote_medm() {
    local OBS=$(echo ${1::1} | awk '{print toupper($0)}')
    shift 1
    local obs=$(echo ${OBS} | awk '{print tolower($0)}')

    export USERAPPS="${USERAPPS:-$USERAPPS_DIR}"

    # set variables
    export IFO="${OBS}1"
    export ifo="${obs}1"
    export SITE="L${OBS}O"
    export site="l${obs}o"

    # set up CDS MEDM paths
    . ${USERAPPS_ENV}
    EPICS_DISPLAY_PATH="${EPICS_DISPLAY_PATH}:${USERAPPS_MEDM_PATH}"

    # add Guardian MEDM paths
    EPICS_DISPLAY_PATH=${EPICS_DISPLAY_PATH}:$(python3 -c "import os; import guardian.medm.screens; print(os.pathsep.join(guardian.medm.screens.__path__))")

    cleanpath EPICS_DISPLAY_PATH

    # run remote MEDM
    echo "Running medm_l${obs}o $@"
    medm_l${obs}o $@
}
