#!/bin/sh
set -e

## setting up ssh key for main machine in rpi
mkdir -p "${HOME}/.ssh"
ssh-keygen -t rsa -b 4096 -f "${HOME}/.ssh/tm-key"

ssh-copy-id -i "${HOME}/.ssh/tm-key.pub" jaga-matrix@turing-machine.local