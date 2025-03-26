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
fi
