#!/bin/sh
set -e

## IN MAIN MACHINE
# creates ssh key for rpi in main machine
mkdir -p "${HOME}/.ssh"
ssh-keygen -t rsa -b 4096 -f "${HOME}/.ssh/rpi-key"

ssh-copy-id -i "${HOME}/.ssh/rpi-key.pub"  pi@myrasp-machine.local