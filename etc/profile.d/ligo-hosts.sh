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

# Caltech
export CIT=ldas-grid.ligo.caltech.edu
alias cit="echo $ ssh ${_user}${CIT}; ssh ${_user}${CIT}"
export CITPCDEV1=ldas-pcdev1.ligo.caltech.edu
alias citpcdev1="echo $ ssh ${_user}${CITPCDEV1}; ssh ${_user}${CITPCDEV1}"
export CITPCDEV2=ldas-pcdev2.ligo.caltech.edu
alias citpcdev2="echo $ ssh ${_user}${CITPCDEV2}; ssh ${_user}${CITPCDEV2}"
export CITPCDEV3=ldas-pcdev3.ligo.caltech.edu
alias citpcdev3="echo $ ssh ${_user}${CITPCDEV3}; ssh ${_user}${CITPCDEV3}"
export CITPCDEV4=ldas-pcdev4.ligo.caltech.edu
alias citpcdev4="echo $ ssh ${_user}${CITPCDEV4}; ssh ${_user}${CITPCDEV4}"
export CITPCDEV5=ldas-pcdev5.ligo.caltech.edu
alias citpcdev5="echo $ ssh ${_user}${CITPCDEV5}; ssh ${_user}${CITPCDEV5}"
export CITPCDEV6=ldas-pcdev6.ligo.caltech.edu
alias citpcdev6="echo $ ssh ${_user}${CITPCDEV6}; ssh ${_user}${CITPCDEV6}"
export CITPCDEV8=ldas-pcdev8.ligo.caltech.edu
alias citpcdev8="echo $ ssh ${_user}${CITPCDEV8}; ssh ${_user}${CITPCDEV8}"
export CITPCDEV15=ldas-pcdev15.ligo.caltech.edu
alias citpcdev15="echo $ ssh ${_user}${CITPCDEV15}; ssh ${_user}${CITPCDEV15}"
export CITPCDEV16=ldas-pcdev16.ligo.caltech.edu
alias citpcdev16="echo $ ssh ${_user}${CITPCDEV16}; ssh ${_user}${CITPCDEV16}"
export CITOSG=ldas-osg.ligo.caltech.edu
alias citosg="echo $ ssh ${_user}${CITOSG}; ssh ${_user}${CITOSG}"


# LIGO Hanford
export LHO=ldas-grid.ligo-wa.caltech.edu
alias lho="echo $ ssh ${_user}${LHO}; ssh ${_user}${LHO}"
export LHOPCDEV1=ldas-pcdev1.ligo-wa.caltech.edu
alias lhopcdev1="echo $ ssh ${_user}${LHOPCDEV1}; ssh ${_user}${LHOPCDEV1}"
export LHOPCDEV2=ldas-pcdev2.ligo-wa.caltech.edu
alias lhopcdev2="echo $ ssh ${_user}${LHOPCDEV2}; ssh ${_user}${LHOPCDEV2}"
export LHOPCDEV5=ldas-pcdev5.ligo-wa.caltech.edu
alias lhopcdev5="echo $ ssh ${_user}${LHOPCDEV5}; ssh ${_user}${LHOPCDEV5}"
export LHOPCDEV6=ldas-pcdev6.ligo-wa.caltech.edu
alias lhopcdev6="echo $ ssh ${_user}${LHOPCDEV6}; ssh ${_user}${LHOPCDEV6}"


# LIGO Livingston
export LLO=ldas-grid.ligo-la.caltech.edu
alias llo="echo $ ssh ${_user}${LLO}; ssh ${_user}${LLO}"
export LLOPCDEV1=ldas-pcdev1.ligo-la.caltech.edu
alias llopcdev1="echo $ ssh ${_user}${LLOPCDEV1}; ssh ${_user}${LLOPCDEV1}"
export LLOPCDEV2=ldas-pcdev2.ligo-la.caltech.edu
alias llopcdev2="echo $ ssh ${_user}${LLOPCDEV2}; ssh ${_user}${LLOPCDEV2}"
export LLOPCDEV5=ldas-pcdev5.ligo-la.caltech.edu
alias llopcdev5="echo $ ssh ${_user}${LLOPCDEV5}; ssh ${_user}${LLOPCDEV5}"
export LLOPCDEV6=ldas-pcdev6.ligo-la.caltech.edu
alias llopcdev6="echo $ ssh ${_user}${LLOPCDEV6}; ssh ${_user}${LLOPCDEV6}"


# MIT
export MIT=ldas-grid.mit.edu
alias mit="echo $ ssh ${_user}${MIT}; ssh ${_user}${MIT}"
export MITPCDEV1=ldas-pcdev1.mit.edu
alias mitpcdev1="echo $ ssh ${_user}${MITPCDEV1}; ssh ${_user}${MITPCDEV1}"
export MITPCDEV2=ldas-pcdev2.mit.edu
alias mitpcdev2="echo $ ssh ${_user}${MITPCDEV2}; ssh ${_user}${MITPCDEV2}"

# atlas (AEI-Hannover)
export ATLAS1=atlas1.atlas.aei.uni-hannover.de
alias atlas1="echo $ ssh ${_user}${ATLAS1}; ssh ${_user}${ATLAS1}"
export ATLAS2=atlas2.atlas.aei.uni-hannover.de
alias atlas2="echo $ ssh ${_user}${ATLAS2}; ssh ${_user}${ATLAS2}"
export ATLAS3=atlas3.atlas.aei.uni-hannover.de
alias atlas3="echo $ ssh ${_user}${ATLAS3}; ssh ${_user}${ATLAS3}"
export ATLAS4=atlas4.atlas.aei.uni-hannover.de
alias atlas4="echo $ ssh ${_user}${ATLAS4}; ssh ${_user}${ATLAS4}"
export ATLAS5=atlas5.atlas.aei.uni-hannover.de
alias atlas5="echo $ ssh ${_user}${ATLAS5}; ssh ${_user}${ATLAS5}"
export ATLAS6=atlas6.atlas.aei.uni-hannover.de
alias atlas6="echo $ ssh ${_user}${ATLAS6}; ssh ${_user}${ATLAS6}"
export ATLAS7=atlas7.atlas.aei.uni-hannover.de
alias atlas7="echo $ ssh ${_user}${ATLAS7}; ssh ${_user}${ATLAS7}"
export ATLAS8=atlas8.atlas.aei.uni-hannover.de
alias atlas8="echo $ ssh ${_user}${ATLAS8}; ssh ${_user}${ATLAS8}"
export ATLAS9=atlas9.atlas.aei.uni-hannover.de
alias atlas9="echo $ ssh ${_user}${ATLAS9}; ssh ${_user}${ATLAS9}"
export TITAN1=titan1.atlas.aei.uni-hannover.de
export TITAN1=titan1.atlas.aei.uni-hannover.de
export TITAN1=titan1.atlas.aei.uni-hannover.de
export TITAN1=titan1.atlas.aei.uni-hannover.de
export TITAN1=titan1.atlas.aei.uni-hannover.de
alias titan1="echo $ ssh ${_user}${TITAN1}; ssh ${_user}${TITAN1}"
export TITAN2=titan2.atlas.aei.uni-hannover.de
alias titan2="echo $ ssh ${_user}${TITAN2}; ssh ${_user}${TITAN2}"
export TITAN3=titan3.atlas.aei.uni-hannover.de
alias titan3="echo $ ssh ${_user}${TITAN3}; ssh ${_user}${TITAN3}"


# SUGAR (Syracuse)
export SUGAR=sugar.phy.syr.edu
alias sugar="echo $ ssh ${_user}${SUGAR}; ssh ${_user}${SUGAR}"
export SUGARPCDEV1=sugar-dev1.phy.syr.edu
alias sugarpcdev1="echo $ ssh ${_user}${SUGARPCDEV1}; ssh ${_user}${SUGARPCDEV1}"
export SUGARPCDEV2=sugar-dev2.phy.syr.edu
alias sugarpcdev2="echo $ ssh ${_user}${SUGARPCDEV2}; ssh ${_user}${SUGARPCDEV2}"


# Nemo (UWM)
export NEMO="submit.ligo.uwm.edu"
alias nemo="echo $ ssh ${_user}${NEMO}; ssh ${_user}${NEMO}"
export HYDRA=hydra.phys.uwm.edu
alias hydra="echo $ ssh ${_user}${HYDRA}; ssh ${_user}${HYDRA}"
export HYDRAPCDEV1=pcdev1.phys.uwm.edu
alias hydrapcdev1="echo $ ssh ${_user}${HYDRAPCDEV1}; ssh ${_user}${HYDRAPCDEV1}"
export HYDRAPCDEV2=pcdev2.phys.uwm.edu
alias hydrapcdev2="echo $ ssh ${_user}${HYDRAPCDEV2}; ssh ${_user}${HYDRAPCDEV2}"
export MARLIN=marlin.phys.uwm.edu
alias marlin="echo $ ssh ${_user}${MARLIN}; ssh ${_user}${MARLIN}"


# Raven (ARCCA)
export ARCCA="ligo.arcca.cf.ac.uk"
alias arcca="echo $ ssh ${_user}${ARCCA}; ssh ${_user}${ARCCA}"

# Hawk (ARCCA)
export HAWK="ligo.gravity.cf.ac.uk"
alias hawk="echo $ ssh ${_user}${HAWK}; ssh ${_user}${HAWK}"

# IUCAA
export IUCAA="ldas-grid.gw.iucaa.in"
alias iucaa="echo $ ssh ${_user}${IUCAA}; ssh ${_user}${IUCAA}"
export IUCAAPCDEV1=ldas-pcdev1.gw.iucaa.in
alias iucaapcdev1="echo $ ssh ${_user}${IUCAAPCDEV1}; ssh ${_user}${IUCAAPCDEV1}"

# alias cluster logins for shared accounts
alias citdetchar="echo $ ssh detchar@${CIT}; ssh detchar@${CIT}"
alias citcbc="echo $ ssh cbc@${CIT}; ssh cbc@${CIT}"
alias citpcdev1detchar="echo $ ssh detchar@${CITPCDEV1}; ssh detchar@${CITPCDEV1}"
alias citpcdev2detchar="echo $ ssh detchar@${CITPCDEV2}; ssh detchar@${CITPCDEV2}"
alias citpcdev3detchar="echo $ ssh detchar@${CITPCDEV3}; ssh detchar@${CITPCDEV3}"
alias citpcdev4detchar="echo $ ssh detchar@${CITPCDEV4}; ssh detchar@${CITPCDEV4}"
alias citpcdev5detchar="echo $ ssh detchar@${CITPCDEV5}; ssh detchar@${CITPCDEV5}"
alias citpcdev6detchar="echo $ ssh detchar@${CITPCDEV6}; ssh detchar@${CITPCDEV6}"
alias citpcdev1cbc="echo $ ssh cbc@${CITPCDEV1}; ssh cbc@${CITPCDEV1}"
alias citpcdev2cbc="echo $ ssh cbc@${CITPCDEV2}; ssh cbc@${CITPCDEV2}"
alias citpcdev3cbc="echo $ ssh cbc@${CITPCDEV3}; ssh cbc@${CITPCDEV3}"
alias citpcdev4cbc="echo $ ssh cbc@${CITPCDEV4}; ssh cbc@${CITPCDEV4}"
alias citpcdev5cbc="echo $ ssh cbc@${CITPCDEV5}; ssh cbc@${CITPCDEV5}"
alias citpcdev6cbc="echo $ ssh cbc@${CITPCDEV6}; ssh cbc@${CITPCDEV6}"
alias lhodetchar="echo $ ssh detchar@${LHO}; ssh detchar@${LHO}"
alias lhocbc="echo $ ssh cbc@${LHO}; ssh cbc@${LHO}"
alias lhopcdev1detchar="echo $ ssh detchar@${LHOPCDEV1}; ssh detchar@${LHOPCDEV1}"
alias lhopcdev2detchar="echo $ ssh detchar@${LHOPCDEV2}; ssh detchar@${LHOPCDEV2}"
alias lhopcdev1cbc="echo $ ssh cbc@${LHOPCDEV1}; ssh cbc@${LHOPCDEV1}"
alias llodetchar="echo $ ssh detchar@${LLO}; ssh detchar@${LLO}"
alias llocbc="echo $ ssh cbc@${LLO}; ssh cbc@${LLO}"
alias llopcdev1detchar="echo $ ssh detchar@${LLOPCDEV1}; ssh detchar@${LLOPCDEV1}"
alias llopcdev2detchar="echo $ ssh detchar@${LLOPCDEV2}; ssh detchar@${LLOPCDEV2}"
alias llopcdev1cbc="echo $ ssh cbc@${LLOPCDEV1}; ssh cbc@${LLOPCDEV1}"
alias atlas1cbc="echo $ ssh cbc@${ATLAS1}; ssh cbc@${ATLAS1}"
alias atlas2cbc="echo $ ssh cbc@${ATLAS2}; ssh cbc@${ATLAS2}"
alias atlas3cbc="echo $ ssh cbc@${ATLAS3}; ssh cbc@${ATLAS3}"
alias atlas4cbc="echo $ ssh cbc@${ATLAS4}; ssh cbc@${ATLAS4}"
alias atlas1geodc="echo $ ssh geodc@${ATLAS1}; ssh geodc@${ATLAS1}"
alias atlas2geodc="echo $ ssh geodc@${ATLAS2}; ssh geodc@${ATLAS2}"
alias atlas3geodc="echo $ ssh geodc@${ATLAS3}; ssh geodc@${ATLAS3}"
alias atlas4geodc="echo $ ssh geodc@${ATLAS4}; ssh geodc@${ATLAS4}"
alias titan1geodc="echo $ ssh geodc@${TITAN1}; ssh geodc@${TITAN1}"
alias titan2geodc="echo $ ssh geodc@${TITAN2}; ssh geodc@${TITAN2}"
alias titan3geodc="echo $ ssh geodc@${TITAN3}; ssh geodc@${TITAN3}"

# alias for detchar nodes
export CITSUMMARY="detchar.ligo.caltech.edu"
alias citsummary="echo $ ssh ${_user}${CITSUMMARY}; ssh ${_user}${CITSUMMARY}"
export LHOSUMMARY="detchar.ligo-wa.caltech.edu"
alias lhosummary="echo $ ssh ${_user}${LHOSUMMARY}; ssh ${_user}${LHOSUMMARY}"
export LLOSUMMARY="detchar.ligo-la.caltech.edu"
alias llosummary="echo $ ssh ${_user}${LLOSUMMARY}; ssh ${_user}${LLOSUMMARY}"

alias citsummarydetchar="echo $ detchar@${CITSUMMARY}; ssh detchar@${CITSUMMARY}"
alias lhosummarydetchar="echo $ detchar@${LHOSUMMARY}; ssh detchar@${LHOSUMMARY}"
alias llosummarydetchar="echo $ detchar@${LLOSUMMARY}; ssh detchar@${LLOSUMMARY}"

# Virgo computing
export VIRGO1="farmn1.virgo.infn.it"
alias virgo1="echo $ ssh macleod@${VIRGO1} && ssh macleod@${VIRGO1}"
export VIRGO2="farmn2.virgo.infn.it"
alias virgo2="echo $ ssh macleod@${VIRGO2} && ssh macleod@${VIRGO2}"

# gracedb processor
export EMFOLLOW="emfollow.ligo.caltech.edu"
alias emfollow="echo $ ssh gracedb.processor@${EMFOLLOW} && ssh gracedb.processor@${EMFOLLOW}"

# KAGRA
export KAGRA="157.82.231.171"
alias kagra="ssh -p 10022 duncan.macleod@${KAGRA}"
