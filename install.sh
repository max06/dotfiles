#!/bin/bash

# Dotfile install script

# Basic packages
apt-get install -y vim fish powerline

# Oh my fish
curl -L https://get.oh-my.fish > /tmp/install
fish /tmp/install --verbose --noninteractive

# Powerline
#pip3 install powerline-status
#cp -r /usr/local/lib/python3.8/site-packages/powerline/config-files /root/.config/powerline
fish -c "omf install powerline"

# Openstack Autocompletion
if command -v openstack &> /dev/null
then
  pip3 install osc-fish-complete
  openstack complete --shell fish > /root/.config/fish/conf.d/openstack.fish
  echo "alias os openstack" >> /root/.config/fish/conf.d/openstack.fish
fi

# Kubernetes Autocompletion
if command -v kubectl &> /dev/null
then
  mkdir -p ~/.config/fish/completions
  cd ~/.config/fish
  git clone https://github.com/evanlucas/fish-kubectl-completions
  ln -s ../fish-kubectl-completions/completions/kubectl.fish completions/
fi

# Ansible env settings
if command -v ansible &> /dev/null
then
  echo "set -gx ANSIBLE_STDOUT_CALLBACK actionable" > /root/.config/fish/conf.d/ansible-env.fish
  echo "set -gx ANSIBLE_DIFF_ALWAYS true" >> /root/.config/fish/conf.d/ansible-env.fish
fi

chsh /usr/bin/fish
echo "fish" >> /root/.bashrc
