#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 10:12:01
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 11:04:10


# Configuration Files
# -------------------
E_ERR_CFG_READ=64                           # exit code when config is required and not found
E_ERR_CFG_WRITE=65                          # exit code when we cannot write to config file
F_USE_CFG_FILE=0                            # enable configuration files
C_CFG_FILE='boilerplate.cfg'                # read and write from this configuration file (if F_USE_CFG_FILE=1)
