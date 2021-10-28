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

    local _hints=(
        "mambaforge"
        "miniforge3"
        "miniconda3"
        "anaconda3"
        "conda"
    )
    local _roots=(
        ${_home}
        ${_home}/opt
        /opt
    )

    # prefer python3 over python3 and anaconda over miniconda
    for _root in "${_roots[@]}"; do
        for _condaname in "${_hints[@]}"; do
            if [ -d ${_root}/${_condaname} ]; then
                echo ${_root}/${_condaname}
                return 0
            fi
        done
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


#############################
# Build a conda package
#############################
conda_build() {
    local args="$@"
    conda activate base
    cmd="conda build
        --error-overlinking
        --error-overdepending
        ${args}
    "
    echo "+ ${cmd}"
    eval ${cmd}
}


if [ -n ${CONDA_SHLVL+x} ]; then
    # conda already initialised
    return
fi

if [ -z ${CONDA_PATH+x} ]; then
    # find conda installation
    CONDA_PATH=$(find_conda)
fi

# initialise conda
if [ -f ${CONDA_PATH}/etc/profile.d/conda.sh ]; then
    source ${CONDA_PATH}/etc/profile.d/conda.sh
elif [ -d ${CONDA_PATH}/condabin ]; then
    export PATH=${PATH}:${CONDA_PATH}/condabin
elif [ -d ${CONDA_PATH}/bin ]; then
    export PATH=${PATH}:${CONDA_PATH}/bin
fi
