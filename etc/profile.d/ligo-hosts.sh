#
# Profile aliases for LIGO Data Grid hosts
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

if [ -z "${LIGO_USER}" ]; then
    _user=""
else
    _user="${LIGO_USER}@"
fi

_SSH_OPTIONS=""

function log_ssh() {
	local target=$1
	shift 1
	echo $ ssh ${_SSH_OPTIONS} ${target} $@
	ssh ${_SSH_OPTIONS} ${target} $@
}

# Caltech
export CIT=ldas-grid.ligo.caltech.edu
alias cit="log_ssh ${_user}${CIT}"
export CITPCDEV1=ldas-pcdev1.ligo.caltech.edu
alias citpcdev1="log_ssh ${_user}${CITPCDEV1}"
export CITPCDEV2=ldas-pcdev2.ligo.caltech.edu
alias citpcdev2="log_ssh ${_user}${CITPCDEV2}"
export CITPCDEV3=ldas-pcdev3.ligo.caltech.edu
alias citpcdev3="log_ssh ${_user}${CITPCDEV3}"
export CITPCDEV4=ldas-pcdev4.ligo.caltech.edu
alias citpcdev4="log_ssh ${_user}${CITPCDEV4}"
export CITPCDEV5=ldas-pcdev5.ligo.caltech.edu
alias citpcdev5="log_ssh ${_user}${CITPCDEV5}"
export CITPCDEV6=ldas-pcdev6.ligo.caltech.edu
alias citpcdev6="log_ssh ${_user}${CITPCDEV6}"
export CITPCDEV8=ldas-pcdev8.ligo.caltech.edu
alias citpcdev8="log_ssh ${_user}${CITPCDEV8}"
export CITPCDEV15=ldas-pcdev15.ligo.caltech.edu
alias citpcdev15="log_ssh ${_user}${CITPCDEV15}}"
export CITPCDEV16=ldas-pcdev16.ligo.caltech.edu
alias citpcdev16="log_ssh ${_user}${CITPCDEV16}}"
export CITOSG=ldas-osg.ligo.caltech.edu
alias citosg="log_ssh ${_user}${CITOSG}"


# LIGO Hanford
export LHO=ldas-grid.ligo-wa.caltech.edu
alias lho="log_ssh ${_user}${LHO}"
export LHOPCDEV1=ldas-pcdev1.ligo-wa.caltech.edu
alias lhopcdev1="log_ssh ${_user}${LHOPCDEV1}"
export LHOPCDEV2=ldas-pcdev2.ligo-wa.caltech.edu
alias lhopcdev2="log_ssh ${_user}${LHOPCDEV2}"
export LHOPCDEV5=ldas-pcdev5.ligo-wa.caltech.edu
alias lhopcdev5="log_ssh ${_user}${LHOPCDEV5}"
export LHOPCDEV6=ldas-pcdev6.ligo-wa.caltech.edu
alias lhopcdev6="log_ssh ${_user}${LHOPCDEV6}"


# LIGO Livingston
export LLO=ldas-grid.ligo-la.caltech.edu
alias llo="log_ssh ${_user}${LLO}"
export LLOPCDEV1=ldas-pcdev1.ligo-la.caltech.edu
alias llopcdev1="log_ssh ${_user}${LLOPCDEV1}"
export LLOPCDEV2=ldas-pcdev2.ligo-la.caltech.edu
alias llopcdev2="log_ssh ${_user}${LLOPCDEV2}"
export LLOPCDEV5=ldas-pcdev5.ligo-la.caltech.edu
alias llopcdev5="log_ssh ${_user}${LLOPCDEV5}"
export LLOPCDEV6=ldas-pcdev6.ligo-la.caltech.edu
alias llopcdev6="log_ssh ${_user}${LLOPCDEV6}"


# MIT
export MIT=ldas-grid.mit.edu
alias mit="log_ssh ${_user}${MIT}"
export MITPCDEV1=ldas-pcdev1.mit.edu
alias mitpcdev1="log_ssh ${_user}${MITPCDEV1}"
export MITPCDEV2=ldas-pcdev2.mit.edu
alias mitpcdev2="log_ssh ${_user}${MITPCDEV2}"

# atlas (AEI-Hannover)
export ATLAS1=atlas1.atlas.aei.uni-hannover.de
alias atlas1="log_ssh ${_user}${ATLAS1}"
export ATLAS2=atlas2.atlas.aei.uni-hannover.de
alias atlas2="log_ssh ${_user}${ATLAS2}"
export ATLAS3=atlas3.atlas.aei.uni-hannover.de
alias atlas3="log_ssh ${_user}${ATLAS3}"
export ATLAS4=atlas4.atlas.aei.uni-hannover.de
alias atlas4="log_ssh ${_user}${ATLAS4}"
export ATLAS5=atlas5.atlas.aei.uni-hannover.de
alias atlas5="log_ssh ${_user}${ATLAS5}"
export ATLAS6=atlas6.atlas.aei.uni-hannover.de
alias atlas6="log_ssh ${_user}${ATLAS6}"
export ATLAS7=atlas7.atlas.aei.uni-hannover.de
alias atlas7="log_ssh ${_user}${ATLAS7}"
export ATLAS8=atlas8.atlas.aei.uni-hannover.de
alias atlas8="log_ssh ${_user}${ATLAS8}"
export ATLAS9=atlas9.atlas.aei.uni-hannover.de
alias atlas9="log_ssh ${_user}${ATLAS9}"
export TITAN1=titan1.atlas.aei.uni-hannover.de
alias titan1="log_ssh ${_user}${TITAN1}"
export TITAN2=titan2.atlas.aei.uni-hannover.de
alias titan2="log_ssh ${_user}${TITAN2}"
export TITAN3=titan3.atlas.aei.uni-hannover.de
alias titan3="log_ssh ${_user}${TITAN3}"

# SUGAR (Syracuse)
export SUGAR=sugar.phy.syr.edu
alias sugar="log_ssh ${_user}${SUGAR}"
export SUGARPCDEV1=sugar-dev1.phy.syr.edu
alias sugarpcdev1="log_ssh ${_user}${SUGARPCDEV1}"
export SUGARPCDEV2=sugar-dev2.phy.syr.edu
alias sugarpcdev2="log_ssh ${_user}${SUGARPCDEV2}"

# Nemo (UWM)
export NEMO="submit.ligo.uwm.edu"
alias nemo="log_ssh ${_user}${NEMO}"

# Raven (ARCCA)
export ARCCA="ligo.arcca.cf.ac.uk"
alias arcca="log_ssh ${_user}${ARCCA}"

# Hawk (ARCCA)
export HAWK="ligo.gravity.cf.ac.uk"
alias hawk="log_ssh ${_user}${HAWK}"

# IUCAA
export IUCAA="ldas-grid.gw.iucaa.in"
alias iucaa="log_ssh ${_user}${IUCAA}"
export IUCAAPCDEV1=ldas-pcdev1.gw.iucaa.in
alias iucaapcdev1="log_ssh ${_user}${IUCAAPCDEV1}"

# PSU
export PSU="ligo.gwave.ics.psu.edu"
alias psu="log_ssh ${_user}${PSU}"

# alias cluster logins for shared accounts
alias citdetchar="log_ssh detchar@${CIT}"
alias citcbc="log_ssh cbc@${CIT}"
alias citpcdev1detchar="log_ssh detchar@${CITPCDEV1}"
alias citpcdev2detchar="log_ssh detchar@${CITPCDEV2}"
alias citpcdev3detchar="log_ssh detchar@${CITPCDEV3}"
alias citpcdev4detchar="log_ssh detchar@${CITPCDEV4}"
alias citpcdev5detchar="log_ssh detchar@${CITPCDEV5}"
alias citpcdev6detchar="log_ssh detchar@${CITPCDEV6}"
alias citpcdev1cbc="log_ssh cbc@${CITPCDEV1}"
alias citpcdev2cbc="log_ssh cbc@${CITPCDEV2}"
alias citpcdev3cbc="log_ssh cbc@${CITPCDEV3}"
alias citpcdev4cbc="log_ssh cbc@${CITPCDEV4}"
alias citpcdev5cbc="log_ssh cbc@${CITPCDEV5}"
alias citpcdev6cbc="log_ssh cbc@${CITPCDEV6}"
alias lhodetchar="log_ssh detchar@${LHO}"
alias lhocbc="log_ssh cbc@${LHO}"
alias lhopcdev1detchar="log_ssh detchar@${LHOPCDEV1}"
alias lhopcdev2detchar="log_ssh detchar@${LHOPCDEV2}"
alias lhopcdev1cbc="log_ssh cbc@${LHOPCDEV1}"
alias llodetchar="log_ssh detchar@${LLO}"
alias llocbc="log_ssh cbc@${LLO}"
alias llopcdev1detchar="log_ssh detchar@${LLOPCDEV1}"
alias llopcdev2detchar="log_ssh detchar@${LLOPCDEV2}"
alias llopcdev1cbc="log_ssh cbc@${LLOPCDEV1}"
alias atlas1cbc="log_ssh cbc@${ATLAS1}"
alias atlas2cbc="log_ssh cbc@${ATLAS2}"
alias atlas3cbc="log_ssh cbc@${ATLAS3}"
alias atlas4cbc="log_ssh cbc@${ATLAS4}"
alias atlas1geodc="log_ssh geodc@${ATLAS1}"
alias atlas2geodc="log_ssh geodc@${ATLAS2}"
alias atlas3geodc="log_ssh geodc@${ATLAS3}"
alias atlas4geodc="log_ssh geodc@${ATLAS4}"
alias titan1geodc="log_ssh geodc@${TITAN1}"
alias titan2geodc="log_ssh geodc@${TITAN2}"
alias titan3geodc="log_ssh geodc@${TITAN3}"

# alias for detchar nodes
export CITSUMMARY="detchar.ligo.caltech.edu"
alias citsummary="log_ssh ${_user}${CITSUMMARY}"
export LHOSUMMARY="detchar.ligo-wa.caltech.edu"
alias lhosummary="log_ssh ${_user}${LHOSUMMARY}"
export LLOSUMMARY="detchar.ligo-la.caltech.edu"
alias llosummary="log_ssh ${_user}${LLOSUMMARY}"

alias citsummarydetchar="log_ssh detchar@${CITSUMMARY}"
alias lhosummarydetchar="log_ssh detchar@${LHOSUMMARY}"
alias llosummarydetchar="log_ssh detchar@${LLOSUMMARY}"

# Virgo computing
export VIRGO1="farmn1.virgo.infn.it"
alias virgo1="log_ssh macleod@${VIRGO1}"
export VIRGO2="farmn2.virgo.infn.it"
alias virgo2="log_ssh macleod@${VIRGO2}"

# gracedb processor
export EMFOLLOW="emfollow.ligo.caltech.edu"
alias emfollow="log_ssh ${_user}${EMFOLLOW}"

# KAGRA
export KAGRA="157.82.231.171"
alias kagra="ssh -p 10022 duncan.macleod@${KAGRA}"
