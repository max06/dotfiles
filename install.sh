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

# Openstack Autocompletion
openstack complete --shell fish > /root/.config/fish/conf.d/openstack.fish

# Ansible env settings
echo "set -gx ANSIBLE_STDOUT_CALLBACK actionable > /root/.config/fish/conf.d/ansible-env.fish"
echo "set -gx ANSIBLE_DIFF_ALWAYS true >> /root/.config/fish/conf.d/ansible-env.fish"

chsh /usr/bin/fish
echo "fish" >> /root/.bashrc
