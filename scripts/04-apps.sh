#!/bin/sh
set -e

## Sets correct time, without correct time, can't update
sudo apt install ntp

sudo apt update && sudo apt upgrade -y

sudo apt install -y lm-sensors git

sudo apt install neovim pavucontrol macchanger