#!/bin/bash

if [[ $EUID -eq 0 ]]; then
  echo "refusing to install dotfiles as root" 2>&1
  exit 1
else
  sudo puppet apply --modulepath=./modules installs.pp
fi
