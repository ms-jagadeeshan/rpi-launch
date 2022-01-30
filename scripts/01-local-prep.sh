#!/bin/sh
set -e

## IN MAIN MACHINE
# downloading lynx browser in main machine
mkdir -p "${HOME}/common"
cd "${HOME}/common"

if command -v wget >/dev/null 2>&1; then
    wget 'http://ftp.us.debian.org/debian/pool/main/l/lynx/lynx_2.8.9rel.1-3+deb10u1_armhf.deb'
    wget 'http://ftp.us.debian.org/debian/pool/main/l/lynx/lynx-common_2.8.9rel.1-3+deb10u1_all.deb'
else
    printf 'wget command requied\nInstalling wget...\n'
    echo 'sudo apt-get install wget'
    sudo apt-get install wget
    test $? && echo "wget installed, run this script again"
fi


