$packages = ['apache2','libapache2-mod-php5','php5','php5-common','php5-curl','php5-gd','php5-imagick','php5-mcrypt','php5-memcache','php5-mhash','php5-mysql','php5-pspell','php5-snmp','php5-sqlite','php5-xmlrpc','php5-xsl','php5-dev','php-pear','mysql-server','make','git','drush']

package{$packages:
  ensure => 'present',
  provider => 'apt'
}