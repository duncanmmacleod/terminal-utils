#!/bin/bash
#
# Profile setter for LIGO.ORG Kerberos and X509
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# KRB5_KTNAME should contain the path of the kerberos keytab for this account
# LIGO_USER should be set to the albert.einstein LIGO.ORG username for this user

# prefer LIGO's IdP by default
if [ -z ${ECP_IDP+x} ]; then
    export ECP_IDP="login.ligo.org"
fi
if [ -z "${HTGETTOKENOPTS+x}" ]; then
    export HTGETTOKENOPTS="--vaultserver vault.ligo.org --issuer igwn"
fi

if [ -f "${KRB5_KTNAME}" ]; then
    # run kinit using keytab
    export KRB5_KTNAME
    alias kget="kinit -kft ${KRB5_KTNAME} ${LIGO_USER}@LIGO.ORG"
    klist -s &> /dev/null
    if [ "$?" -ne 0 ] && [ -n "${LIGO_USER}" ]; then
        kget &> /dev/null && echo "Kerberos ticket generated for ${LIGO_USER}"
    fi

    # set function for kerberos-based init
    function lpi() {
        klist -s &> /dev/null || \
            kinit -kft ${KRB5_KTNAME} ${LIGO_USER}@LIGO.ORG
        ecp-get-cert -i LIGO -k $@
    }

else
    # set alias for init
    alias lpi="ecp-get-cert -i LIGO ${LIGO_USER}"
fi

command -v ecp-get-cert 1>/dev/null || return

# only if we aren't using a robot certificate, do the following:
if [ -z ${X509_USER_CERT} ]; then

    # use kerberos for ecp-get-cert, but not with a robot cert
    if [ -f "${KRB5_KTNAME}" ]; then
        ecp-cert-info --valid 00:01 &> /dev/null || lpi 1>/dev/null
    fi

    # override gsi commands to check grid-proxy before running
    function gsissh {
        ecp-cert-info --valid 00:01 &> /dev/null || lpi 1>/dev/null
        command gsissh $@
    }
    function gsiscp {
        ecp-cert-info --valid 00:01 &> /dev/null || lpi 1>/dev/null
        command gsiscp $@
    }

fi
