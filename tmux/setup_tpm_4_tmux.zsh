#!/usr/bin/env zsh

echo "\n<<< Starting TPM Plugin Setup >>>\n"

if [ ! -d  ${HOME}/.tmux/plugins/tpm ] ; then
#"${HOME}/.tmux/plugins/tpm"; then
    echo "tpm doesn't exist, continuing with install"
    /bin/bash -c 'git clone https://github.com/tmux-plugins/tpm "${HOME}/.tmux/plugins/tpm"'
else
    echo "tpm exists, skipping install"
fi
