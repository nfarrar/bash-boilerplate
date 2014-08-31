#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 10:12:01
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 12:47:29

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
[ -n "$LIB_CFG_FILE" ] && return || readonly LIB_CFG_FILE=1


# Configuration Files
# -------------------
E_ERR_CFG_READ=64                           # exit code when config is required and not found
E_ERR_CFG_WRITE=65                          # exit code when we cannot write to config file
F_USE_CFG_FILE=0                            # enable configuration files
C_CFG_FILE='boilerplate.cfg'                # read and write from this configuration file (if F_USE_CFG_FILE=1)
