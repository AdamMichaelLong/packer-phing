#!/usr/bin/env bash
date > /etc/vagrant_box_build_time
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant
# Installing vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
# see https://github.com/mitchellh/vagrant/tree/master/keys
wget --no-check-certificate -O authorized_keys 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub'
mv authorized_keys /home/vagrant/.ssh
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
echo 'vagrant ALL=NOPASSWD: ALL' >> /etc/sudoers

echo 'Welcome to your Packer-Vagrant built virtual machine.' > /etc/motd
