#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" == "wsl" ]; then
    choco.exe upgrade microsoft-windows-terminal -y

    PKG_PATH=$2
    WIN_TERMINAL_PATH=$(powershell.exe -Command "echo \$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json")
    TERMINAL_PATH=$(wslpath "$WIN_TERMINAL_PATH")
    TERMINAL_PATH=${TERMINAL_PATH%$'\r'}

    cp "$PKG_PATH/configs/settings.json" "$TERMINAL_PATH"
else
    echo -e "\e[33mWindows Terminal is only installable on Windows platforms."
fi
