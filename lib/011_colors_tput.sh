#!/usr/bin/env bash
# @Author:             Nathan Farrar
# @Date:               2014-08-31 10:49:50
# @Last Modified by:   Nathan Farrar
# @Last Modified time: 2014-08-31 11:08:52


# Tput Terminal Color Definitions
# ===============================

# Terminal Color Definitions
# --------------------------
C_RESET='$(tput sgr0)'
C_DIM='$(tput dim)'
C_BOLD='$(tput bold)'
C_UNDERLINE='$(tput sgr 0 1)'
C_STANDOUT='$(tput smso)'
C_REV='$(tput rev)'

C_FG_BLACK='$(tput setaf 0)'
C_FG_RED='$(tput setaf 1)'
C_FG_GREEN='$(tput setaf 2)'
C_FG_YELLOW='$(tput setaf 3)'
C_FG_BLUE='$(tput setaf 4)'
C_FG_MAGENTA='$(tput setaf 5)'
C_FG_CYAN='$(tput setaf 6)'
C_FG_WHITE='$(tput setaf 7)'

C_BG_BLACK='$(tput setab 0)'
C_BG_RED='$(tput setab 1)'
C_BG_GREEN='$(tput setab 2)'
C_BG_YELLOW='$(tput setab 3)'
C_BG_BLUE='$(tput setab 4)'
C_BG_MAGENTA='$(tput setab 5)'
C_BG_CYAN='$(tput setab 6)'
C_BG_WHITE='$(tput setab 7)'
