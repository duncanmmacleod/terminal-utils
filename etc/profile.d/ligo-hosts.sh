#
# Profile aliases for LIGO Data Grid hosts
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

if [ -z "${LIGO_USER}" ]; then
    _ssh="gsissh -p 2222"
    _user=""
    _connector="gsissh "
else
    _ssh="ssh"
    _user="${LIGO_USER}@"
fi

# Caltech
export CIT=ldas-grid.ligo.caltech.edu
alias cit="echo $ ${_ssh} ${_user}${CIT}; ${_ssh} ${_user}${CIT}"
export CITPCDEV1=ldas-pcdev1.ligo.caltech.edu
alias citpcdev1="echo $ ${_ssh} ${_user}${CITPCDEV1}; ${_ssh} ${_user}${CITPCDEV1}"
export CITPCDEV2=ldas-pcdev2.ligo.caltech.edu
alias citpcdev2="echo $ ${_ssh} ${_user}${CITPCDEV2}; ${_ssh} ${_user}${CITPCDEV2}"
export CITPCDEV3=ldas-pcdev3.ligo.caltech.edu
alias citpcdev3="echo $ ${_ssh} ${_user}${CITPCDEV3}; ${_ssh} ${_user}${CITPCDEV3}"
export CITPCDEV4=ldas-pcdev4.ligo.caltech.edu
alias citpcdev4="echo $ ${_ssh} ${_user}${CITPCDEV4}; ${_ssh} ${_user}${CITPCDEV4}"
export CITPCDEV5=ldas-pcdev5.ligo.caltech.edu
alias citpcdev5="echo $ ${_ssh} ${_user}${CITPCDEV5}; ${_ssh} ${_user}${CITPCDEV5}"
export CITPCDEV6=ldas-pcdev6.ligo.caltech.edu
alias citpcdev6="echo $ ${_ssh} ${_user}${CITPCDEV6}; ${_ssh} ${_user}${CITPCDEV6}"
export CITOSG=ldas-osg.ligo.caltech.edu
alias citosg="echo $ ${_ssh} ${_user}${CITOSG}; ${_ssh} ${_user}${CITOSG}"


# LIGO Hanford
export LHO=ldas-grid.ligo-wa.caltech.edu
alias lho="echo $ ${_ssh} ${_user}${LHO}; ${_ssh} ${_user}${LHO}"
export LHOPCDEV1=ldas-pcdev1.ligo-wa.caltech.edu
alias lhopcdev1="echo $ ${_ssh} ${_user}${LHOPCDEV1}; ${_ssh} ${_user}${LHOPCDEV1}"
export LHOPCDEV2=ldas-pcdev2.ligo-wa.caltech.edu
alias lhopcdev2="echo $ ${_ssh} ${_user}${LHOPCDEV2}; ${_ssh} ${_user}${LHOPCDEV2}"
export LHOPCDEV5=ldas-pcdev5.ligo-wa.caltech.edu
alias lhopcdev5="echo $ ${_ssh} ${_user}${LHOPCDEV5}; ${_ssh} ${_user}${LHOPCDEV5}"
export LHOPCDEV6=ldas-pcdev6.ligo-wa.caltech.edu
alias lhopcdev6="echo $ ${_ssh} ${_user}${LHOPCDEV6}; ${_ssh} ${_user}${LHOPCDEV6}"


# LIGO Livingston
export LLO=ldas-grid.ligo-la.caltech.edu
alias llo="echo $ ${_ssh} ${_user}${LLO}; ${_ssh} ${_user}${LLO}"
export LLOPCDEV1=ldas-pcdev1.ligo-la.caltech.edu
alias llopcdev1="echo $ ${_ssh} ${_user}${LLOPCDEV1}; ${_ssh} ${_user}${LLOPCDEV1}"
export LLOPCDEV2=ldas-pcdev2.ligo-la.caltech.edu
alias llopcdev2="echo $ ${_ssh} ${_user}${LLOPCDEV2}; ${_ssh} ${_user}${LLOPCDEV2}"
export LLOPCDEV5=ldas-pcdev5.ligo-la.caltech.edu
alias llopcdev5="echo $ ${_ssh} ${_user}${LLOPCDEV5}; ${_ssh} ${_user}${LLOPCDEV5}"
export LLOPCDEV6=ldas-pcdev6.ligo-la.caltech.edu
alias llopcdev6="echo $ ${_ssh} ${_user}${LLOPCDEV6}; ${_ssh} ${_user}${LLOPCDEV6}"


# MIT
export MIT=ldas-grid.mit.edu
alias mit="echo $ ${_ssh} ${_user}${MIT}; ${_ssh} ${_user}${MIT}"
export MITPCDEV1=ldas-pcdev1.mit.edu
alias mitpcdev1="echo $ ${_ssh} ${_user}${MITPCDEV1}; ${_ssh} ${_user}${MITPCDEV1}"
export MITPCDEV2=ldas-pcdev2.mit.edu
alias mitpcdev2="echo $ ${_ssh} ${_user}${MITPCDEV2}; ${_ssh} ${_user}${MITPCDEV2}"

# atlas (AEI-Hannover)
export ATLAS1=atlas1.atlas.aei.uni-hannover.de
alias atlas1="echo $ ${_ssh} ${_user}${ATLAS1}; ${_ssh} ${_user}${ATLAS1}"
export ATLAS2=atlas2.atlas.aei.uni-hannover.de
alias atlas2="echo $ ${_ssh} ${_user}${ATLAS2}; ${_ssh} ${_user}${ATLAS2}"
export ATLAS3=atlas3.atlas.aei.uni-hannover.de
alias atlas3="echo $ ${_ssh} ${_user}${ATLAS3}; ${_ssh} ${_user}${ATLAS3}"
export ATLAS4=atlas4.atlas.aei.uni-hannover.de
alias atlas4="echo $ ${_ssh} ${_user}${ATLAS4}; ${_ssh} ${_user}${ATLAS4}"
export ATLAS5=atlas5.atlas.aei.uni-hannover.de
alias atlas5="echo $ ${_ssh} ${_user}${ATLAS5}; ${_ssh} ${_user}${ATLAS5}"
export ATLAS6=atlas6.atlas.aei.uni-hannover.de
alias atlas6="echo $ ${_ssh} ${_user}${ATLAS6}; ${_ssh} ${_user}${ATLAS6}"
export ATLAS7=atlas7.atlas.aei.uni-hannover.de
alias atlas7="echo $ ${_ssh} ${_user}${ATLAS7}; ${_ssh} ${_user}${ATLAS7}"
export ATLAS8=atlas8.atlas.aei.uni-hannover.de
alias atlas8="echo $ ${_ssh} ${_user}${ATLAS8}; ${_ssh} ${_user}${ATLAS8}"
export ATLAS9=atlas9.atlas.aei.uni-hannover.de
alias atlas9="echo $ ${_ssh} ${_user}${ATLAS9}; ${_ssh} ${_user}${ATLAS9}"
export TITAN1=titan1.atlas.aei.uni-hannover.de
export TITAN1=titan1.atlas.aei.uni-hannover.de
export TITAN1=titan1.atlas.aei.uni-hannover.de
export TITAN1=titan1.atlas.aei.uni-hannover.de
export TITAN1=titan1.atlas.aei.uni-hannover.de
alias titan1="echo $ ${_ssh} ${_user}${TITAN1}; ${_ssh} ${_user}${TITAN1}"
export TITAN2=titan2.atlas.aei.uni-hannover.de
alias titan2="echo $ ${_ssh} ${_user}${TITAN2}; ${_ssh} ${_user}${TITAN2}"
export TITAN3=titan3.atlas.aei.uni-hannover.de
alias titan3="echo $ ${_ssh} ${_user}${TITAN3}; ${_ssh} ${_user}${TITAN3}"


# SUGAR (Syracuse)
export SUGAR=sugar.phy.syr.edu
alias sugar="echo $ ${_ssh} ${_user}${SUGAR}; ${_ssh} ${_user}${SUGAR}"
export SUGARPCDEV1=sugar-dev1.phy.syr.edu
alias sugarpcdev1="echo $ ${_ssh} ${_user}${SUGARPCDEV1}; ${_ssh} ${_user}${SUGARPCDEV1}"
export SUGARPCDEV2=sugar-dev2.phy.syr.edu
alias sugarpcdev2="echo $ ${_ssh} ${_user}${SUGARPCDEV2}; ${_ssh} ${_user}${SUGARPCDEV2}"


# Nemo (UWM)
export NEMO="submit.ligo.uwm.edu"
alias nemo="echo $ ${_ssh} ${_user}${NEMO}; ${_ssh} ${_user}${NEMO}"
export HYDRA=hydra.phys.uwm.edu
alias hydra="echo $ ${_ssh} ${_user}${HYDRA}; ${_ssh} ${_user}${HYDRA}"
export HYDRAPCDEV1=pcdev1.phys.uwm.edu
alias hydrapcdev1="echo $ ${_ssh} ${_user}${HYDRAPCDEV1}; ${_ssh} ${_user}${HYDRAPCDEV1}"
export HYDRAPCDEV2=pcdev2.phys.uwm.edu
alias hydrapcdev2="echo $ ${_ssh} ${_user}${HYDRAPCDEV2}; ${_ssh} ${_user}${HYDRAPCDEV2}"
export MARLIN=marlin.phys.uwm.edu
alias marlin="echo $ ${_ssh} ${_user}${MARLIN}; ${_ssh} ${_user}${MARLIN}"


# Raven (ARCCA)
export ARCCA="ligo.arcca.cf.ac.uk"
alias arcca="echo $ ${_ssh} ${_user}${ARCCA}; ${_ssh} ${_user}${ARCCA}"

# Hawk (ARCCA)
export HAWK="ligo.gravity.cf.ac.uk"
alias hawk="echo $ ${_ssh} ${_user}${HAWK}; ${_ssh} ${_user}${HAWK}"

# IUCAA
export IUCAA="ldas-grid.gw.iucaa.in"
alias iucaa="echo $ ${_ssh} ${_user}${IUCAA}; ${_ssh} ${_user}${IUCAA}"
export IUCAAPCDEV1=ldas-pcdev1.gw.iucaa.in
alias iucaapcdev1="echo $ ${_ssh} ${_user}${IUCAAPCDEV1}; ${_ssh} ${_user}${IUCAAPCDEV1}"

# alias cluster logins for shared accounts
alias citdetchar="echo $ ${_ssh} detchar@${CIT}; ${_ssh} detchar@${CIT}"
alias citcbc="echo $ ${_ssh} cbc@${CIT}; ${_ssh} cbc@${CIT}"
alias citpcdev1detchar="echo $ ${_ssh} detchar@${CITPCDEV1}; ${_ssh} detchar@${CITPCDEV1}"
alias citpcdev2detchar="echo $ ${_ssh} detchar@${CITPCDEV2}; ${_ssh} detchar@${CITPCDEV2}"
alias citpcdev3detchar="echo $ ${_ssh} detchar@${CITPCDEV3}; ${_ssh} detchar@${CITPCDEV3}"
alias citpcdev4detchar="echo $ ${_ssh} detchar@${CITPCDEV4}; ${_ssh} detchar@${CITPCDEV4}"
alias citpcdev5detchar="echo $ ${_ssh} detchar@${CITPCDEV5}; ${_ssh} detchar@${CITPCDEV5}"
alias citpcdev6detchar="echo $ ${_ssh} detchar@${CITPCDEV6}; ${_ssh} detchar@${CITPCDEV6}"
alias citpcdev1cbc="echo $ ${_ssh} cbc@${CITPCDEV1}; ${_ssh} cbc@${CITPCDEV1}"
alias citpcdev2cbc="echo $ ${_ssh} cbc@${CITPCDEV2}; ${_ssh} cbc@${CITPCDEV2}"
alias citpcdev3cbc="echo $ ${_ssh} cbc@${CITPCDEV3}; ${_ssh} cbc@${CITPCDEV3}"
alias citpcdev4cbc="echo $ ${_ssh} cbc@${CITPCDEV4}; ${_ssh} cbc@${CITPCDEV4}"
alias citpcdev5cbc="echo $ ${_ssh} cbc@${CITPCDEV5}; ${_ssh} cbc@${CITPCDEV5}"
alias citpcdev6cbc="echo $ ${_ssh} cbc@${CITPCDEV6}; ${_ssh} cbc@${CITPCDEV6}"
alias lhodetchar="echo $ ${_ssh} detchar@${LHO}; ${_ssh} detchar@${LHO}"
alias lhocbc="echo $ ${_ssh} cbc@${LHO}; ${_ssh} cbc@${LHO}"
alias lhopcdev1detchar="echo $ ${_ssh} detchar@${LHOPCDEV1}; ${_ssh} detchar@${LHOPCDEV1}"
alias lhopcdev2detchar="echo $ ${_ssh} detchar@${LHOPCDEV2}; ${_ssh} detchar@${LHOPCDEV2}"
alias lhopcdev1cbc="echo $ ${_ssh} cbc@${LHOPCDEV1}; ${_ssh} cbc@${LHOPCDEV1}"
alias llodetchar="echo $ ${_ssh} detchar@${LLO}; ${_ssh} detchar@${LLO}"
alias llocbc="echo $ ${_ssh} cbc@${LLO}; ${_ssh} cbc@${LLO}"
alias llopcdev1detchar="echo $ ${_ssh} detchar@${LLOPCDEV1}; ${_ssh} detchar@${LLOPCDEV1}"
alias llopcdev2detchar="echo $ ${_ssh} detchar@${LLOPCDEV2}; ${_ssh} detchar@${LLOPCDEV2}"
alias llopcdev1cbc="echo $ ${_ssh} cbc@${LLOPCDEV1}; ${_ssh} cbc@${LLOPCDEV1}"
alias atlas1cbc="echo $ ${_ssh} cbc@${ATLAS1}; ${_ssh} cbc@${ATLAS1}"
alias atlas2cbc="echo $ ${_ssh} cbc@${ATLAS2}; ${_ssh} cbc@${ATLAS2}"
alias atlas3cbc="echo $ ${_ssh} cbc@${ATLAS3}; ${_ssh} cbc@${ATLAS3}"
alias atlas4cbc="echo $ ${_ssh} cbc@${ATLAS4}; ${_ssh} cbc@${ATLAS4}"
alias atlas1geodc="echo $ ${_ssh} geodc@${ATLAS1}; ${_ssh} geodc@${ATLAS1}"
alias atlas2geodc="echo $ ${_ssh} geodc@${ATLAS2}; ${_ssh} geodc@${ATLAS2}"
alias atlas3geodc="echo $ ${_ssh} geodc@${ATLAS3}; ${_ssh} geodc@${ATLAS3}"
alias atlas4geodc="echo $ ${_ssh} geodc@${ATLAS4}; ${_ssh} geodc@${ATLAS4}"
alias titan1geodc="echo $ ${_ssh} geodc@${TITAN1}; ${_ssh} geodc@${TITAN1}"
alias titan2geodc="echo $ ${_ssh} geodc@${TITAN2}; ${_ssh} geodc@${TITAN2}"
alias titan3geodc="echo $ ${_ssh} geodc@${TITAN3}; ${_ssh} geodc@${TITAN3}"

# alias for detchar nodes
export CITSUMMARY="detchar.ligo.caltech.edu"
alias citsummary="echo $ ${_ssh} ${_user}${CITSUMMARY}; ${_ssh} ${_user}${CITSUMMARY}"
export LHOSUMMARY="detchar.ligo-wa.caltech.edu"
alias lhosummary="echo $ ${_ssh} ${_user}${LHOSUMMARY}; ${_ssh} ${_user}${LHOSUMMARY}"
export LLOSUMMARY="detchar.ligo-la.caltech.edu"
alias llosummary="echo $ ${_ssh} ${_user}${LLOSUMMARY}; ${_ssh} ${_user}${LLOSUMMARY}"

alias citsummarydetchar="echo $ detchar@${CITSUMMARY}; ${_ssh} detchar@${CITSUMMARY}"
alias lhosummarydetchar="echo $ detchar@${LHOSUMMARY}; ${_ssh} detchar@${LHOSUMMARY}"
alias llosummarydetchar="echo $ detchar@${LLOSUMMARY}; ${_ssh} detchar@${LLOSUMMARY}"

# Virgo computing
export VIRGO1="farmn1.virgo.infn.it"
alias virgo1="echo $ ssh macleod@${VIRGO1} && ssh macleod@${VIRGO1}"
export VIRGO2="farmn2.virgo.infn.it"
alias virgo2="echo $ ssh macleod@${VIRGO2} && ssh macleod@${VIRGO2}"

# gracedb processor
export EMFOLLOW="emfollow.ligo.caltech.edu"
alias emfollow="echo $ ${_ssh} gracedb.processor@${EMFOLLOW} && ${_ssh} gracedb.processor@${EMFOLLOW}"

# KAGRA
export KAGRA="157.82.231.171"
alias kagra="ssh -p 10022 duncan.macleod@${KAGRA}"
