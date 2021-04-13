#!/usr/bin/env zsh
echo "\n<<< Starting zGenom Plugin Setup >>>\n"

if exists zgenom; then
    echo "zgenom doesn't exist, continuing with install"
    #/bin/bash -c 'git clone https://github.com/jandamm/zgenom.git "${HOME}/.zgenom"'
else
    echo "zgenom exists, skipping install"
fi
