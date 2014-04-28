packer-phing
=================

Using Packer and Phing to auto build Vagrant base-boxes.
[more info on Packer-Phing](http://adammichaellong.github.io/packer-phing/)

# Required
[Packer](http://packer.io)
[Phing](http://www.phing.info/) 
[Vagrant](http://vagrantup.com)

# Install Vagrant
Follow Vagrant install steps [Vagrant](http://docs.vagrantup.com/v2/installation/index.html)

# Install Pear
wget -q -O - http://pear.php.net/go-pear.phar > /tmp/go-pear.phar
php /tmp/go-pear.phar
rm /tmp/go-pear.phar
pear upgrade pear
 
# Install Phing
pear channel-discover pear.phing.info
pear upgrade --alldeps
pear install --alldeps phing/phing

Make sure php.ini has pear include path:
pear config-get php_dir 
include_path = ".:/usr/lib/php/pear” 

# Install Packer
Follow Packer install steps [Packer](http://www.packer.io/docs/installation.html)

# Usage 
Within /phing/ run "phing"





