#!/bin/sh
# @Author: Nathan Farrar
# @Date:   2014-08-31 10:43:15
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 10:43:17


# [220] Runtime Requirement - Bash Version
# ----------------------------------------
E_ERR_BASH_VERS=63                      # exit code when executing in an unsupported version of bash

F_REQ_BASH_VERS=1                       # require this script to execute using a specific version of bash
F_REQ_BASH_VERS_MAJ=4                   # require this major version (if F_REQ_BASH_VERS=1)
F_REQ_BASH_VERS_MIN=3                   # require this minor version (if F_REQ_BASH_VERS=1)

function req_bash_version() {
    message "$FUNCNAME not implemented."
    die $E_ERR_NOT_IMPLIMENTED
}
