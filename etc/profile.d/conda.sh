#!/bin/bash
#
# profile setter for conda

###################################
# Find {ana,mini}conda installation
# Returns:
#   the path to the distribution
#   (parent of 'bin' dir)
###################################
find_conda() {
    # find HOME
    if [ -z ${HOME+x} ]; then
        local _home="/home/$(whoami)"
    else
        local _home=${HOME}
    fi

    # prefer python3 over python3 and anaconda over miniconda
    for _condaname in anaconda3 anaconda2 miniconda3 miniconda2; do
        if [ -d ${_home}/${_condaname} ]; then
            echo ${_home}/${_condaname}
            return 0
        fi
    done
    return 1
}


forgeupdate() {
    echo_and_execute conda update --name base conda-smithy conda-forge-pinning $@
}

forgeregen() {
    forgeupdate --yes --quiet
    echo_and_execute conda smithy regenerate $@
}

###############################
# Activate a conda environment
# ready for building C packages
###############################
conda_build_environment() {
    local name=$1
    shift 1
    conda activate ${name} 1>/dev/null
    export PREFIX="${CONDA_PREFIX}"
    export CONDA_BUILD="1"
    conda activate ${name} 1>/dev/null
    export CPPFLAGS="${CPPFLAGS} -UNDEBUG"
    echo "conda environment in ${CONDA_PREFIX} active"
    echo "| CC:       ${CC}"
    echo "| CFLAGS:   ${CFLAGS}"
    echo "| CPPFLAGS: ${CPPFLAGS}"
    echo "| CXXFLAGS: ${CXXFLAGS}"
    echo "| LDFLAGS:  ${LDFLAGS}"
}


# find conda installation
if [ -z ${CONDA_PATH+x} ]; then
    CONDA_PATH=$(find_conda)
fi

# setup conda
if [ -f ${CONDA_PATH}/etc/profile.d/conda.sh ]; then
    source ${CONDA_PATH}/etc/profile.d/conda.sh
elif [ -d ${CONDA_PATH}/condabin ]; then
    export PATH=${PATH}:${CONDA_PATH}/condabin
elif [ -d ${CONDA_PATH}/bin ]; then
    export PATH=${PATH}:${CONDA_PATH}/bin
fi
