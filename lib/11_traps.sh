#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 11:07:01
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 12:47:10

# Bash Boilerplate - A Framework for Building Bash Scripts
# Copyright (C) 2014  Nathan Farrar

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


# Do not source this library multiple times.
[ -n "$LIB_TRAPS" ] && return || readonly LIB_TRAPS=1


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
