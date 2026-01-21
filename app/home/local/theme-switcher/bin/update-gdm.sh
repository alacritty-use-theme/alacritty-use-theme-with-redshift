#!/bin/sh
echo "__UPDATE_THEME__"

# NOTE: I dont think this is needed after setting up toggle-per-mode

if [[ -z $DAY_NIGHT ]]; then
  echo "__UPDATE_THEME__No_Change"
  exit 0
fi

if  command -v gdm &> /dev/null; then
    source $HOME/.local/share/theme-switcher/toggle-theme-per-mode.sh
fi


