#!/bin/sh
set -e

## IN RPI
# copies lynx browser from main machine, to authenticate lan network
mkdir -p "${HOME}/common"
cd "${HOME}/common" || exit
scp jaga-matrix@turing-machine.local:/home/jaga-matrix/common/lynx* .
sudo dpkg -i lynx*

lynx 1.1.1.1

