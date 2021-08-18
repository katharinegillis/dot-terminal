#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" == "wsl" ]; then
    choco.exe uninstall microsoft-windows-terminal -y
else
    echo -e "\e[33mWindows Terminal is only installable on Windows platforms, nothing to uninstall."
fi