#!/bin/bash

# Press any key to continue.
function anykey() {
  echo
  read -rsn 1 -p ""
}

# Demo an AppleScript via `osascript`.
function applescript() {
  open -a "Google Chrome"
  # The script is usually triggered when Chrome is already frontmost. Adding
  # a slight delay helps smooth things out here.
  sleep 0.5
  osascript "$INCOGNITOSCRIPT"
}

# Optional source view of the demo AppleScript.
function scriptsource() {
  clear
  echo
  # This text is only displayed if the user skipped the demo.
  if [ "$SCRIPTDEMO" -eq 0 ]; then
    echo "Even though you didn't see the demo…"
    echo
  fi
  echo "Do you want to see the source code?"
  echo

  local CAT="Output source to the Terminal."
  local CATCOPY="Output source to the Terminal and copy to the clipboard."
  local GITHUB="View source on GitHub."
  local SCRIPTEDITOR="View source in AppleScript Editor."
  local NTY="No thanks, I'll pass."

  choices=(
    "$CAT"
    "$CATCOPY"
    "$GITHUB"
    "$SCRIPTEDITOR"
    "$NTY"
  )
  select choice in "${choices[@]}"; do
    clear
    case $choice in
      "$CATCOPY" )
        cat "$INCOGNITOSCRIPT" | pbcopy
        echo
        cat "$INCOGNITOSCRIPT"
        echo
        anykey
        # Newer versions of bash have the `;&` and `;;&` options to continue
        # with the next case, which would be really useful here. But I want
        # people to be able to run this and hack it without having to update
        # their bash. I installed a newer version of bash via homebrew.
        break;;
      "$CAT" )
        echo
        cat "$INCOGNITOSCRIPT"
        echo
        anykey
        break;;
      "$GITHUB" )
        open https://github.com/Cottser/explode/blob/master/scripts/Duplicate%20current%20tab%20as%20incognito%20window.applescript
        break;;
      "$SCRIPTEDITOR" )
        open "$INCOGNITOSCRIPT" -a "AppleScript Editor"
        break;;
      "$NTY" )
        break;;
    esac
  done
}
