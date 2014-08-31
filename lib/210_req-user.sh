#!/bin/sh
# @Author: Nathan Farrar
# @Date:   2014-08-31 10:42:30
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 11:21:46


# Require Execuation as User
# --------------------------
E_ERR_USER=61       # exit code when executing as user other than root when root is required


F_REQ_USER=0        # require this script to run as $S_REQ_USER


S_REQ_USER='root'   # require this script to run as this user

req_user() {
    if [ "$UID" -ne "$(get_uid($S_REQ_USER))" ]; then
        message "Not running as $S_REQ_USER", $C_ERROR
        die $E_ERR_USER
    fi
}

# get_uid($username)
function get_uid() {
    message "$FUNCNAME not implemented."
    die $E_ERR_NOT_IMPLIMENTED
}
