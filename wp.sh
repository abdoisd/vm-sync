#!/bin/sh

if [ ! -f /first ]; then

# installing wp
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# just to exec wp
apk add php-phar

# exec stuf
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# this auto create admin
cd /var/www/html
wp core install \
  --url="https://localhost" \
  --title="Inception" \
  --admin_user="abdo" \
  --admin_password="pass" \
  --admin_email="abdo@gmail.com"

# add wordpress user
wp user create aisdaoun aisdaoun@gmail.com --role=editor --user_pass=pass

touch /first

fi

exec php-fpm83 -F
