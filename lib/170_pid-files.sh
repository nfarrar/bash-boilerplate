#!/bin/sh
# @Author: Nathan Farrar
# @Date:   2014-08-31 10:41:44
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 11:01:56


# PID Files
# ---------
F_USE_PID_FILE=0                        # read and write our pid from a file
C_PID_FILE='boilerplate.pid'            # read and write our pid from this file (if F_USE_PID_FILE=1)
E_ERR_FAIL_WRITE_PID=66                 # exit code when we cannot write to a pid file

