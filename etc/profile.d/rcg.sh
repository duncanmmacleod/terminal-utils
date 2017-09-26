#!/bin/bash
#
# Profile setter for the LIGO Laboratory's advLigoRTS repository
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# add RCG parts to MATLABPATH for simulink
export RCG_DIR=${HOME}/svn/advLigoRTS/trunk
MATLABPATH=${HOME}/svn/advLigoRTS/trunk/src/epics/simLink:${HOME}/svn/advLigoRTS/trunk/src/epics/simLink/lib:${MATLABPATH}
cleanpath MATLABPATH
export MATLABPATH
