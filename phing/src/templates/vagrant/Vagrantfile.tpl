# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Vagrant Box config.
  config.vm.box = "${buildname}"
  config.vm.box_url = "${package}.box"
  config.vm.synced_folder "src/sync/${buildname}", "/srv/sync", disabled: ${share_folder}, create: true

  # VM Network config.
  #config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "public_network", ip: "${vm_ip}", :bridge => 'en0: Wi-Fi (AirPort)'
  config.ssh.forward_agent = true

  # VirtualBox config.
  config.vm.provider "virtualbox" do |vb|
   vb.gui = true
  end

  # Puppet provisioning.
  #config.vm.provision "puppet" do |puppet|
  #  puppet.manifests_path = "../../provisioners/puppet"
  #  puppet.manifest_file = "default.pp"
  #  puppet.options = "--verbose --debug"
  #end

end