#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 10:41:44
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 12:47:31

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
[ -n "$LIB_PID_FILES" ] && return || readonly LIB_PID_FILES=1


# PID Files
# ---------
F_USE_PID_FILE=0                        # read and write our pid from a file
C_PID_FILE='boilerplate.pid'            # read and write our pid from this file (if F_USE_PID_FILE=1)
E_ERR_FAIL_WRITE_PID=66                 # exit code when we cannot write to a pid file

