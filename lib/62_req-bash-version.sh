#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 10:43:15
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 12:47:42

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
[ -n "$LIB_REQ_BASH_VERSION" ] && return || readonly LIB_REQ_BASH_VERSION=1


# Runtime Requirement - Bash Version
# ----------------------------------
E_ERR_BASH_VERS=63                      # exit code when executing in an unsupported version of bash

F_REQ_BASH_VERS=1                       # require this script to execute using a specific version of bash
F_REQ_BASH_VERS_MAJ=4                   # require this major version (if F_REQ_BASH_VERS=1)
F_REQ_BASH_VERS_MIN=3                   # require this minor version (if F_REQ_BASH_VERS=1)

function req_bash_version() {
    message "$FUNCNAME not implemented."
    die $E_ERR_NOT_IMPLIMENTED
}
