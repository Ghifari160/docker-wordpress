#!/bin/bash

function wordpress_install()
{
  cd /var/www && tar -xvzf /tmp/g16/wp.tar.gz
  # rm -rf /var/www/html
  # mv /var/www/wordpress /var/www/html
  cp -a /var/www/wordpress/. /var/www/html/
  rm -rf /var/www/wordpress
}

function wordpress_fixperms()
{
  chown -fR www-data:www-data /var/www/html
  chmod -fR 777 /var/www/html
}

if [ ! -d "/var/www/html/wp-admin" ]; then
  wordpress_install
  wordpress_fixperms
fi

/usr/sbin/apachectl -D FOREGROUND
