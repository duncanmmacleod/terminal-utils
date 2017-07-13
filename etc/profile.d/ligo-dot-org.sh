#
# Profile setter for LIGO.ORG Kerberos and X509
#
# Author: Duncan Macleod <duncan.macleod@ligo.org>
#

# KRB5_KTNAME should contain the path of the kerberos keytab for this account
# LIGO_USER should be set to the albert.einstein LIGO.ORG username for this user

if [ -f ${KRB5_KTNAME} ]; then
    # run kinit using keytab
    export KRB5_KTNAME
    klist -s > /dev/null 2>&1
    if [ "$?" -eq 1 -a -n "${LIGO_USER}" ]; then
        kinit -kft ${KRB5_KTNAME} ${LIGO_USER}@LIGO.ORG 1> /dev/null 2>&1 &&
        echo "Kerberos ticket generated for ${LIGO_USER}"
    fi

    # set alias for kerberos-based init
    alias lpi="ligo-proxy-init -k"

    # use kerberos for ligo-proxy-init
    command grid-proxy-info -exists -valid 00:01 1>/dev/null 2>&1 || lpi

    # alias gsi commands to check grid-proxy before running
    alias gsissh="(command grid-proxy-info -exists -valid 00:01 \
                   1>/dev/null 2>&1 || lpi) && gsissh"
    alias gsiscp="(command grid-proxy-info -exists -valid 00:01 \
                   1>/dev/null 2>&1 || lpi) && gsiscp"
fi
