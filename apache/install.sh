#!/bin/bash

### Install Apache ###
apt-get update
apt-get -y install apache2

### Link development folder with site folder ###
ln -s /vagrant/bartholomew.one /var/www/

### Activate updated Apache config ###
cp -f /vagrant/apache/000-default.conf /etc/apache2/sites-available/
systemctl restart apache2
