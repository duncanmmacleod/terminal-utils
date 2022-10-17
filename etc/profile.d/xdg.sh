#!/bin/bash
#
# profile setter for XDG
# see https://specifications.freedesktop.org/basedir-spec/latest/

# set default cache
if [ -z "${XDG_CACHE_HOME+x}" ]; then
	export XDG_CACHE_HOME="${HOME}/.cache"
fi

# set default config
if [ -z "${XDG_CONFIG_HOME+x}" ]; then
	export XDG_CONFIG_HOME="${HOME}/.config"
fi

# create subdirectories for astropy-based projects
mkdir -pv \
	${XDG_CACHE_HOME}/astropy \
	${XDG_CACHE_HOME}/gwpy \
	${XDG_CACHE_HOME}/ligo.em_bright \
	${XDG_CACHE_HOME}/psrqpy \
;
mkdir -pv \
	${XDG_CONFIG_HOME}/astropy \
;
