#!/bin/bash

#NGINX
rm -f /etc/nginx/sites-enabled/default
rm -f /etc/nginx/sites-available/default
mv ./default /etc/nginx/sites-available/
#включить сайты
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
chown -R www-data /var/www
chmod -R 755 /var/www

#CERTIFICAT SSL https://www.openssl.org/docs/manmaster/man1/openssl-req.html
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-out /etc/nginx/nginx-selfsigned.crt \
	-keyout /etc/nginx/nginx-selfsigned.key \
	-subj "/C=RF/ST=Kazan/CN=ncallie"