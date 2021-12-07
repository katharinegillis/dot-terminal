#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" == "wsl" ]; then
    choco.exe uninstall microsoft-windows-terminal -y
elif [ "$SYSTEM" == "mac" ]; then
    brew uninstall --cask iterm2
else
    echo -e "\e[33mNo terminal was installed for Ubuntu."
fi
