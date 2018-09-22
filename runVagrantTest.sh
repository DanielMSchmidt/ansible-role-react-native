#!/bin/bash

set -ex

# Cleanup previous run
rm -f ~/vagrant/ansible.cfg ~/vagrant/test.yml ~/.bashrc

cd ~/vagrant/react-native

# prepare environment
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
cp test-ansible.cfg ../ansible.cfg
cp test.yml ../test.yml
touch ~/.bashrc

# Run provisoining
cd ~/vagrant
ansible-playbook -i 'localhost,' -c local test.yml -vvvv

# Test run
cd ~/vagrant/react-native/tests/solidarity && npm install && npx solidarity