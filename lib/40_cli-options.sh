#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 10:11:36
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 12:47:26

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
[ -n "$LIB_CLI_OPTIONS" ] && return || readonly LIB_CLI_OPTIONS=1


# Command Line Options
# --------------------
E_ERR_INVALID_CLI_OPTIONS=110               # exit code for CLI options error

F_USE_CLI_OPTIONS=0                         # enable command line option parsing

parse_cli_options() {
    message "$FUNCNAME not implimented."
    die $E_ERR_NOT_IMPLIMENTED
}
