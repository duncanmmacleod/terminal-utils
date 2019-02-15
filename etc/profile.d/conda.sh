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
    echo_and_execute conda smithy regenerate
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
