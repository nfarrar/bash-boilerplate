#!/usr/bin/env bash
#/ Usage: ./bash-boilerplate.sh
#/   Bash boilerplate script. Batteries included.
#/
#/ Features & Error Codes
#/   - embedded documentation
#/   - [10]  robust debugging
#/   - [110] command line options parsing
#/   - [130] configuration files
#/   - [150] message & log handling
#/   - [170] pid files
#/   - [190] lock files
#/   - [200] runtime requirements
#/          - [210] user & permissions
#/          - [220] bash version
#/          - [230] operating system
#/
#/ Conventions:
#/   - [C] = Constant:  should not be modified in most situations
#/   - [E] = Exit Code: the value returned for specific conditions
#/   - [F] = Flag:      a configurable boolean setting that modifies program behavior
#/   - [S] = Setting:   a configurable non-boolean settings, such as a path or format
#/
#/ This boilerplate is written such that entire sections can easily be stripped
#/ out when not needed (rather than putting all the flags at top, they are
#/ organized into sections based on their purpose).


# Strict Execution
# ----------------
set -o nounset                          # generate an error if we attempt to modify an unset variable
set -o pipefail                         # preserve pipeline errors
set -o errexit                          # exit when errors are generated
set -o noclobber                        # do not overwrite files
shopt -s extglob                        # enable extended globbing (required for pattern matching)
shopt -s extdebug                       # enable extended debugging (required for function stack trace)
IFS=$'\n\t'                             # do not use spaces as a field separator


# Generic Exit Codes
# ------------------
E_SUCCESS=0                             # exit code for successful execution
E_ERR_UNKNOWN=1                         # exit code for an unknown error

E_ERR_FUNCTION_ARGS=10                  # exit code for when a function is called with the wrong arguments
E_ERR_NOT_IMPLIMENTED=11                # exit code when an unimplemented function is called

E_TRAP_SIGHUP=21                        # exit code when a SIGHUP (hangup, value=1) signal is received
E_TRAP_SIGINT=22                        # exit code when a SIGINT (interupt, value=2, typically Ctrl+C) signal is received
E_TRAP_SIGKILL=23                       # exit code when a SIGKILL (kill, value=9) signal is received
E_TRAP_SIGTERM=24                       # exit code when a SIGTERM (termination, value=15) signal is received
E_TRAP_SIGSTOP=25                       # exit code when a SIGSTOP (stop, value=17,19,23) signal is recieved


# Terminal Constants
# ------------------
C_SYMBOL_SUCCESS='✓'
C_SYMBOL_FAILURE='✘'
C_SYMBOL_WARN='☣'
C_SYMBOL_INPUT='⤆'
C_SYMBOL_OUTPUT='⤇'

C_RESET=$(tput sgr0)
C_DIM=$(tput dim)
C_BOLD=$(tput bold)
C_UNDERLINE=$(tput sgr 0 1)
C_STANDOUT=$(tput smso)
C_REV=$(tput rev)

C_FG_BLACK=$(tput setaf 0)
C_FG_RED=$(tput setaf 1)
C_FG_GREEN=$(tput setaf 2)
C_FG_YELLOW=$(tput setaf 3)
C_FG_BLUE=$(tput setaf 4)
C_FG_MAGENTA=$(tput setaf 5)
C_FG_CYAN=$(tput setaf 6)
C_FG_WHITE=$(tput setaf 7)

C_BG_BLACK=$(tput setab 0)
C_BG_RED=$(tput setab 1)
C_BG_GREEN=$(tput setab 2)
C_BG_YELLOW=$(tput setab 3)
C_BG_BLUE=$(tput setab 4)
C_BG_MAGENTA=$(tput setab 5)
C_BG_CYAN=$(tput setab 6)
C_BG_WHITE=$(tput setab 7)


# Required Functions
# ------------------

function sig_handler() {
    message("$FUNCNAME not implimented.")
    die($E_ERR_NOT_IMPLIMENTED)
}

function die() {
    local $error_code = $@

    cleanup()
    return $error_code
}

function cleanup() {
    message("Performing cleanup", $C_DEBUG)
}


# [110] Command Line Options
# --------------------------
E_ERR_INVALID_CLI_OPTIONS=110               # exit code for CLI options error

F_USE_CLI_OPTIONS=0                         # enable command line option parsing

function parse_cli_options() {
    message("$FUNCNAME not implimented.")
    die($E_ERR_NOT_IMPLIMENTED)
}

# [130] Configuation Files
# ------------------------
E_ERR_CFG_READ=64                           # exit code when config is required and not found
E_ERR_CFG_WRITE=65                          # exit code when we cannot write to config file

F_USE_CFG_FILE=0                            # enable configuration files

C_CFG_FILE='boilerplate.cfg'                # read and write from this configuration file (if F_USE_CFG_FILE=1)


# [150] Messages
# --------------
C_DEBUG=0                                   # debugging messages    (CLI: --debug)
C_INFO=1                                    # info messages         (CLI: --verbose)
C_WARN=2                                    # warning messages
C_ERROR=3                                   # error messages
C_DEBUG_COLOR=$C_FG_MAGENTA                 # the color to use when writing DEBUG messages to console
C_INFO_COLOR=$C_FG_GREEN                    # the color to use when writing INFO messages to console
C_WARN_COLOR=$C_FG_YELLOW                   # the color to use when writing WARN messages to console
C_ERROR_COLOR=$C_FG_RED                     # the color to use when writing ERROR messages to console

F_MSG_LEVEL=$C_DEBUG                        # the lowest message level to display (messages below this level will be discarded)
F_MSG_LEVEL_DEFAULT=$C_DEBUG                # the default message level to use when message is called without an argument
F_MSG_CONSOLE=1                             # write messages to console (STDOUT, STDERR)
F_MSG_LOGFILE=0                             # write messages to our logfile ()
F_MSG_SYSLOG=0                              # send messages to syslog

S_LOG_FILE='boilerplate.log'                # write logs to this file (if F_MSG_LOGFILE=1)
S_DATE_PATTERN='+%Y/%m/%d:%H:%M:%S'         # the date pattern to use when writting messages

# message
function message() {
    local $msg="$1"
    local $level="$2"

    if [ $F_MSG_CONSOLE == 1 ]; then
        _message_write_console($msg, $level)
    fi

    if [ $FMSG_LOGFILE == 1 ]; then
        _message_write_logfile($msg, $level)
    fi

    if [ $F_MSG_SYSLOG == 1 ]; then
        _message_write_syslog($msg, $level)
    fi
}

function _message_write_console() {
    message("$FUNCNAME not implimented.")
    die($E_ERR_NOT_IMPLIMENTED)
}

function _message_write_logfile() {
    message("$FUNCNAME not implimented.")
    die($E_ERR_NOT_IMPLIMENTED)
}

function _message_write_syslog() {
    message("$FUNCNAME not implimented.")
    die($E_ERR_NOT_IMPLIMENTED)
}


# [170] PID Files
# ---------------
F_USE_PID_FILE=0                        # read and write our pid from a file

C_PID_FILE='boilerplate.pid'            # read and write our pid from this file (if F_USE_PID_FILE=1)

E_ERR_FAIL_WRITE_PID=66                 # exit code when we cannot write to a pid file

# Lock Files [190]
# ----------------
E_ERR_READ_LOCK=190
E_ERR_WRITE_LOCK=191


# [210] Runtime Requirement - User & Permissions
# ----------------------------------------------
E_ERR_USER=61       # exit code when executing as user other than root when root is required
E_ERR_SUDO=62       # exit code when executing as user without sudo privileges

F_REQ_USER=0        # require this script to run as $S_REQ_USER
F_REQ_SUDO=0        # require this script to run using SUDO privileges

S_REQ_USER='root'   # require this script to run as this user

function req_user() {
    if [ "$UID" -ne "$(get_uid($S_REQ_USER))" ]; then
        message("Not running as $S_REQ_USER", $C_ERROR)
        die($E_ERR_USER)
    fi
}

# get_uid($username)
function get_uid() {
    message("$FUNCNAME not implimented.")
    die($E_ERR_NOT_IMPLIMENTED)
}


# [220] Runtime Requirement - Bash Version
# ----------------------------------------
E_ERR_BASH_VERS=63                      # exit code when executing in an unsupported version of bash

F_REQ_BASH_VERS=1                       # require this script to execute using a specific version of bash
F_REQ_BASH_VERS_MAJ=4                   # require this major version (if F_REQ_BASH_VERS=1)
F_REQ_BASH_VERS_MIN=3                   # require this minor version (if F_REQ_BASH_VERS=1)

function req_bash_version() {
    message("$FUNCNAME not implimented.")
    die($E_ERR_NOT_IMPLIMENTED)
}

# [230] Runtime Requirement - Operating System
# --------------------------------------------
E_ERR_OS=230
F_REQ_OS=0                              # require this script to execute only on a specific operating system

function req_os() {
    message("$FUNCNAME not implimented.")
    die($E_ERR_NOT_IMPLIMENTED)
}








