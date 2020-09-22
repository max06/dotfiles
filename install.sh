#!/bin/bash

# Dotfile install script

# Basic packages
apt-get install -y vim fish

# Oh my fish
curl -L https://get.oh-my.fish > /tmp/install
fish /tmp/install --verbose --noninteractive

# Powerline
pip3 install powerline-status
cp -r /usr/local/lib/python3.8/site-packages/powerline/config-files /root/.config/powerline
fish -c "omf install powerline"

chsh /usr/bin/fish
