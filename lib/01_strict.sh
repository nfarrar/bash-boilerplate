#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 12:37:25
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 12:47:49

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
[ -n "$LIB_STRICT" ] && return || readonly LIB_STRICT=1


# Strict Execution
# ----------------
set -o nounset                          # generate an error if we attempt to modify an unset variable
set -o pipefail                         # preserve pipeline errors
set -o errexit                          # exit when errors are generated
set -o noclobber                        # do not overwrite files
shopt -s extglob                        # enable extended globbing (required for pattern matching)
shopt -s extdebug                       # enable extended debugging (required for function stack trace)
IFS=$'\n\t'                             # do not use spaces as a field separator
