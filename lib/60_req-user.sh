#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 10:42:30
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 12:17:09

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
