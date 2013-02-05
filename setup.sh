#!/bin/bash

# Relative path to demo AppleScript.
INCOGNITOSCRIPT="scripts/Duplicate current tab as incognito window.applescript"

# Set columns for `select` command to a high number so that each option is on
# its own line.
COLUMNS=400

# Set the prompt for the select command.
PS3="Enter the number corresponding to your choice: "

# Set up variables for terminal colours and styles.
BOLD=$(tput bold)
UNDERLINE=$(tput sgr 0 1)
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
# Text reset.
DEFAULT=$(tput sgr0)
