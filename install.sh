#!/bin/bash

# Dotfile install script

apt-get install -y vim fish
curl -L https://get.oh-my.fish > /tmp/install
fish /tmp/install --verbose --noninteractive
