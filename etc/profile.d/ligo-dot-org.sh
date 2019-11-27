#!/bin/bash
#
# Profile setter for LIGO.ORG Kerberos and X509
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# KRB5_KTNAME should contain the path of the kerberos keytab for this account
# LIGO_USER should be set to the albert.einstein LIGO.ORG username for this user

command -v ligo-proxy-init 1>/dev/null || return

if [ -f "${KRB5_KTNAME}" ]; then
    # run kinit using keytab
    export KRB5_KTNAME
    alias kget="kinit -kft ${KRB5_KTNAME} ${LIGO_USER}@LIGO.ORG"
    klist -s &> /dev/null
    if [ "$?" -ne 0 ] && [ -n "${LIGO_USER}" ]; then
        kget &> /dev/null && echo "Kerberos ticket generated for ${LIGO_USER}"
    fi

    # set function for kerberos-based init
    lpi() {
        klist -s &> /dev/null || \
            kinit -kft ${KRB5_KTNAME} ${LIGO_USER}@LIGO.ORG
        ligo-proxy-init -k $@
    }

else
    # set alias for init
    alias lpi="ligo-proxy-init"
fi

# only if we aren't using a robot certificate, do the following:
if [ -z ${X509_USER_CERT} ]; then

    # use kerberos for ligo-proxy-init, but not with a robot cert
    grid-proxy-info -exists -valid 00:01 &> /dev/null || lpi 1>/dev/null

    # override gsi commands to check grid-proxy before running
    function gsissh {
        grid-proxy-info -exists -valid 00:01 &> /dev/null || lpi 1>/dev/null
        command gsissh $@
    }
    function gsiscp {
        grid-proxy-info -exists -valid 00:01 &> /dev/null || lpi 1>/dev/null
        command gsiscp $@
    }

fi
