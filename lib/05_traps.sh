#!/bin/sh
# @Author: Nathan Farrar
# @Date:   2014-08-31 11:07:01
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 11:19:42


# Traps
# =====

# Exit Codes
# ----------
E_TRAP_SIGHUP=21                        # exit code when a SIGHUP (hangup, value=1) signal is received
E_TRAP_SIGINT=22                        # exit code when a SIGINT (interupt, value=2, typically Ctrl+C) signal is received
E_TRAP_SIGKILL=23                       # exit code when a SIGKILL (kill, value=9) signal is received
E_TRAP_SIGTERM=24                       # exit code when a SIGTERM (termination, value=15) signal is received
E_TRAP_SIGSTOP=25                       # exit code when a SIGSTOP (stop, value=17,19,23) signal is recieved


# Required Functions
# ------------------
sig_handler() {
    message "$FUNCNAME not implemented."
    die $E_ERR_NOT_IMPLIMENTED
}
