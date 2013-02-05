#!/bin/bash

# Temporarily cd into the folder if we aren't already there.
cd "$(dirname "${BASH_SOURCE}")"
# Include setup and support functions.
source setup.sh
source functions.sh

# Let's start the show.
clear
echo
echo "Hello world!"
sleep 0.5
echo
echo "Do you want to learn about scripting?"
sleep 0.25
echo
select choice in "Yes" "No"; do
  case $choice in
    Yes )
      break;;
    No )
      echo
      echo "Okay, bye. :("
      exit;;
  esac
done

# Introduction.
clear
echo
echo "Wonderful. Before we get started…"
echo
echo "My name is Scott Reeves, I go by ${GREEN}@Cottser${DEFAULT}."
echo
echo "I'm a ${BLUE}Drupal${DEFAULT} developer at ${RED}@DigitalEchidna${DEFAULT}."

# Fair warning.
anykey
echo "${YELLOW}!!! ${BOLD}Warning${DEFAULT} ${YELLOW}!!!${DEFAULT}"
echo "There be  ahead."

# Talk overview.
anykey
clear
echo
echo "Shell scripts and AppleScripts."
anykey
echo "Save your brainpower and fingers for the important stuff."
anykey
echo "For me, a lot of this is avoiding the mouse whenever possible."

# AppleScript demo.
anykey
clear
echo
echo "Would you like to see a quick AppleScript in action?"
echo "(requires Google Chrome)"
echo
select choice in "Yes" "No"; do
  case $choice in
    Yes )
      SCRIPTDEMO=1
      applescript;
      break;;
    No )
      SCRIPTDEMO=0
      break;;
  esac
done

# Optional source view of the demo AppleScript. This function checks the value
# of SCRIPTDEMO set above.
scriptsource

# Some basic advice on writing scripts
clear
echo
echo "When writing scripts, search engines and copy and paste are"
echo "your friends. Don't be afraid to be a copy and paste ${BOLD}artist${DEFAULT}."
echo

# Save your fingers.
anykey
clear
echo
echo "If you live in the command line or are thinking about moving in,"
echo "look at or fork other people's dotfiles on GitHub or elsewhere."
anykey
echo "That command you use all day, every day?"
echo "Alias it to a single letter."
echo
echo "alias g = git"
echo "alias d = drush"

# Be cautious, though.
anykey
clear
echo
echo "Before you create a new alias or function, \`which\` it"
echo "to make sure you're not clobbering something important."
echo
echo "which g"

# And scene.
anykey
clear
echo
echo "Thank you."
echo
echo "github.com/Cottser/explode"
echo

anykey
clear

# cd back to original location.
cd $OLDPWD
